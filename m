Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DFD9CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8mMCch/+kuxb8RoiJvd4UnMPKeAVSsS0p3qlF1/5O4=; b=x9UPBrJUSZZckO
	l3MIb1F3eUiPAXwHcfn3r3Xris+QCC/YdKYh4QDCOx9Y9SXEhWp/BlMwkznip4faHyRGVgreu4KXR
	SWrG5kj9H2OV7efWhOqUcn8ArpfyX+3QQsFjTtpuLOOKX1Lbxc5u9qqs0kDHGtwCCcccF2MyuE7Wx
	G50pIkziWGK1Jyl5QyjgsgHJv/QczId/dh19S9SzfU2YdCDyU+pJ8K2HqvsG6Gjm91QlTpcmPxDgT
	MITlABu5u2lT/d4wMgtVPy/JCesLbYS1fW+k3ECCYuq+WkZFru5datqCyvH3wpZRg7amTTdUt0fR/
	Z5Vzg27gyhx2DoB8Df7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBos-000000085Ze-1agz;
	Thu, 01 Oct 2026 08:07:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBoo-000000085YS-1iaN
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:07:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xTe41289193
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 08:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a2+uakS3SXIfKHjN/Q0tB5X3dTaJ81nHOC9ZuhbU7rM=; b=j/byryf4F4l6haxs
	m3ZK3HLk5vi70FELPX44Gh35VFEFbtOEL2qNIcAo7uyLNg7G8YkIkevOvLzZjyUg
	Sk82MAdlqnSVaUXDAo3nfsmoCFcI+dlDt7UJxZwFqYs+RL/xf5f288dPaqGPE0bG
	SYu0dO1tus7/rih/JD/5qvhy7xbJHBr6ng/CulIZvm0VaX+EQNa8h8I4i3zGWhXp
	q3SmKQ2Vudla8OFuW+BYdlSpFl0vHgOIBUe96ZKSuwz5fbHKsku3mWrMdv2knM01
	fVZKl9279xgjp3FZl7+aq11BjTInopj1ZKT1pDORn6mxMzPca4/ckm2NtU3OEFok
	ueGOBQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17pjaqh8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 08:07:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92eebb130dcso93136485a.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 01:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790842024; x=1791446824; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a2+uakS3SXIfKHjN/Q0tB5X3dTaJ81nHOC9ZuhbU7rM=;
        b=SGK3quCaJk9vBaZRfVITK13E6Kyoar3cxIwJTjd06AaU6xfKvfox8JRJgOVuHlzyPf
         FRwDrk9FUSiLjr1kVo3tNRmvA+oYMZDvt7cmir2TnxYOHAMKnt0u5/8g58T31QJ5xO89
         0GJx4nAihSfRxIiPOHh4jxBV7tHBd1qS0E1qn6oJ7eDmy3afYdnGl8h6wsotC5rOXs6t
         lJzBkoySAPINxy+PnP/KQJsrQbe4WvbBRtrkHuti66ApZEaaDZuRagXrL3FVdUzFQXUw
         yTJiZltW0heQXNvO+gir03OECznj01c/IHqqKLCV1YA6M+cue6o+gM/VY6UYUhXgjs/R
         6HMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790842024; x=1791446824;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a2+uakS3SXIfKHjN/Q0tB5X3dTaJ81nHOC9ZuhbU7rM=;
        b=oc9cmF+gs6g67XFFQvJuPJ2CbyoriJ0NdlEwvCRN6rPdHyejjYRJV7dvkX0ip9ThaE
         epcMLjqOGo/jznFl0fPQcAq8l9AhpQ97AIqAfQVwTZcLubIx4XKE+3s6b0SOi3r0WfsM
         ki2rtaxe6Hq0AXNCZUsAxxRIlhHXaXhDUztWiLXPKHashu43v65n/1osu3cbNdeJBviD
         pfJSUCfEtpbs5cNrQTw9g+4Wab4qnhfZjR9jcVRmjF5wsjzqsRwYtYx0m1JuBG2JwYTl
         74lGftxJI+eyms0DmhwOCrolCyEOjx+SxlPOcBhZQTfd6Bf2PP/u3GFRygRwhT/6hIkH
         ymsQ==
X-Forwarded-Encrypted: i=1; AKwUvBy5s4BrD7tqKjz7GDosr2Eh7y7siiB5qHSnyUnvHHSijC2GH2eBSqDCqZooaQYexcUcOjOaBGPOVDw=@lists.infradead.org
X-Gm-Message-State: AFuF++n2VtS0EhtejIfaAndmhqtsffYSctAje+zU3KQr0pZYT6NqK/4S
	JKes8w2572liAixVAQhCWi3cCPwMJq5nUWqmnG/C2ss461BGymBLXCMuthyqE+g67LXLwqHAYER
	ev0eH7rCi/jF58qLk4DXuqAR9VILxi8GcIrWLwfSxgp+gqBfLdA8sQDlA8bcrMUfQkKoG
X-Gm-Gg: AYBFou0NFfXvDJVlW2rtY9rr1QEvTOgV4YMiYKg6N68YGAGg+S5Khj3WTXbLqipsTRA
	+Y6qM7xFP8ej4gb14WC+wS+mzWR9Pi9XUWnyNA0ezZMW+VpvZGfBPOogNQhAWWndArTJDhc5iU9
	J9U1J7mqdSOMXh0z3iKY12mQslU+VifnRCyYAgO0oem8pfXkNDStahJU44oENaHMX1g87L5TN6X
	XBkD/GnDfxxzcm+Sy3f4TQVrTZImprf3F46XzhavrrUzoqsu4PodJOXpYIe792/Pu3KnDHJyJYz
	ajCdSMeQJ96S899WJpjHC6QqdZW3md8uMKN8wPsf9F3e+q8LEl16RoQueV1LzDasfPzmLXet/FJ
	XPkA6bXqFbTT70CA8Gk1+zg==
X-Received: by 2002:a05:620a:84c6:b0:93c:9e43:6807 with SMTP id af79cd13be357-93ca97b92eemr630027685a.3.1790842024124;
        Thu, 01 Oct 2026 01:07:04 -0700 (PDT)
X-Received: by 2002:a05:620a:84c6:b0:93c:9e43:6807 with SMTP id af79cd13be357-93ca97b92eemr630024085a.3.1790842023633;
        Thu, 01 Oct 2026 01:07:03 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ae5ca72d4esm648046a12.25.2026.10.01.01.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2026 01:07:02 -0700 (PDT)
Message-ID: <12e76437-c2bb-40b5-ac9d-a6f89f5f3999@oss.qualcomm.com>
Date: Thu, 1 Oct 2026 10:07:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
 <20260924-phy-v3-4-088e7be0cfaa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260924-phy-v3-4-088e7be0cfaa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eqpKXYpX c=1 sm=1 tr=0 ts=6abe14a9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=lPcTt8mPJekVWdHiCMEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 7_fBuaURff7mWQr1K7sqW_d-7DM7e6lU
X-Proofpoint-ORIG-GUID: 7_fBuaURff7mWQr1K7sqW_d-7DM7e6lU
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzMiBTYWx0ZWRfX/PfB07OK69l2
 LIexO+3G19IXmd+rIJRV2xYHvNnGx2r1HfLCudMPoeU41woXKZt0reepNHGk3/pqchgwUkEQz2q
 20qZXIkH/WnpTYzSnM7st1m0Y1IdCAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzMiBTYWx0ZWRfX1ss+bUPYhp/K
 NO/xuAdOLasW05p+IIxcuAVm6o5PTH/HlSfSxVhyuiIZuPsP+u5pz8VItSCg5/Dk4cmX2ljrcct
 EdN1VhfdllyoZfod2arBKmzZOIBXa6zJTMw28dKv3prwchHAXHgnfQZXIF6lYkXGKUYcqB+nolu
 D+WMEGKXlQ74HV65QLbGqqGqma7mkCAq/HZsGG7qUcZhpdGloXElWCbBg8eeap22KiURcbgGYBV
 xqcXZv4TpVCmdNBsvhBx3L4ZQviGHCeeoP9hvO5Y/BBfdUJt3Hc9gYphXnEubln5Z9yGvIBRxjK
 OvN+kJXvRqKql/Q2IYsNnUwZDEQ4aF3tOsUgtQb+R2Wk2ofdXehqtMBgEFHYeF6b3ZFzTcoKh0I
 pWV9OqN0il5qDOgM/COIh3Zv0KMG+XB1mpw/fcvp2WSpwkA0X92UJnYEXmrZrOvk2w2rqi/LQCh
 qyaMC7Egho6NsrCDfSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_010706_467242_4A19D367 
X-CRM114-Status: GOOD (  13.10  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/24/26 8:10 AM, Varadarajan Narayanan wrote:
> The driver currently programs the common PHY register sequence directly in
> qcom_snps_hsphy_init(), with the fixed register writes split around the
> override parameter handling. This makes it hard to support SoCs that need a
> different sequence or different values.
> 
> Move the fixed pre- and post-override register programming into per-
> compatible configuration tables, and keep the 7 nm override parameters in
> the same match-data structure. This allows the driver to share the common
> sequence while adding SoC-specific sequences for future platforms such as
> IPQ9650.
> 
> Additionally, address the register bit field mask & value mixup for
> USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
> in qcom_snps_hsphy_suspend().

Please separate this out. Otherwise GPT thinks this patch
looks alright

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
