Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBC960A261F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 10:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sJ7jGydf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=a09MkyTY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ixDOh7SD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iU1yPB/Tb8yt9+/3c4nEwx2exU7hm3H68v3+84m2qs=; b=sJ7jGydfIvjJ2I
	02cdieAYrT/PDqngBa4kymAd1fvq13M2/4CR5rGkK3Hjfa1M7b+w1HQmNJJxzkq7zXcZWQCY9lU0x
	23Mb2bNAw/P1yIoHm19osBkBxHqQguDQXSENc+NzMTIdI/T53vShXYU3V4vVrJXrVf/YxYI8S52Me
	P9OQe6b9nMUl/LU75UkW3bvxfC0BLr+SkOicjHe5lgZp6ryfVwiy+sfhCxWWNXTBOb0txpsY5QkCO
	ix3yRunl4FJh3H5NDeMulU4Xknn87tKfFIihyX10lqDALmhpS9PVV1b00sjuQEMhhNrYhyG8PGqI0
	TIbny7AzdKNXpqyX4K7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7Sy-00000009TuQ-3pME;
	Tue, 20 Oct 2026 10:53:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7Sw-00000009Ttv-12fO
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 10:53:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K8Q0Xg1254476
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:53:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WMV8ofDDxBNdTwSP1aYc+u/HWDgqRDgvwAh8onkk2KY=; b=a09MkyTYoekj80La
	KfCkZdaIGY+uH9MenW+CzrmFFSde2y4GGW4aeHQUJo+RwLoaVDRS83MAuv1XMLR3
	MPcxLLJT5vp/qcrWPLSiWImyOe9lCbtEuDnRarXUZLsj0aVgur8e1M+neH3tk96/
	kMj5Z+jl5rB4C2pLqEJ2rjVyKFm086ZyBysnlYRWnZFQoL6w9tAF9Mv2UP5/xX7G
	AjJne7QZJdDkxwRPEO2GTmwjUkPCCkpFXzBuqaQ7LCdAqehqv6NJrzCnLCOC9KmN
	w4UNa+htDoxj617ourxVqPKG7ssNhD4KuyPecGA7/naSI1m2jIZJpDzbUgcuWGVw
	I8YwWw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5na47k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:53:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93ea8a9cfe6so109385585a.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 03:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792493589; x=1793098389; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WMV8ofDDxBNdTwSP1aYc+u/HWDgqRDgvwAh8onkk2KY=;
        b=ixDOh7SDYCq3e/gm60howKIglgVbb2icPhrnWO7MtD2uYQvXpTUB99RP6ueqRcEkWJ
         uFoeFwWwhEiWAQTR/+Lz2VEv5akScXF3tiCUCbIy9jxV7LQxQsrLZ7nFGSa1QuMvFAAy
         2B8kPWrMSmWCvzeUR6xVP5DUJvGBnwTOJGrcjvIa+2WA3JtDA2+vxf24fFJZjy5VHC1I
         rmnG2E4YB1wnH70+faCDRPjGObWQL2ioFsyM6Dw8BHqECkvg5KaHQfhWusDmz9nISf5X
         m2oVIWw8O8MBBRqpz7dXFN3XujWK/6p0r3S4msQHue7pyeXXV5Cjxr7mtKlccBvPYI29
         Eh7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792493589; x=1793098389;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WMV8ofDDxBNdTwSP1aYc+u/HWDgqRDgvwAh8onkk2KY=;
        b=GNVM3ZuyBR4j/WdBNtqH/Hf4no3yHzWufTKoDM4T6Mrge4vK8TIvGNy2ySRoz3w6qi
         k9ASu6U9dzJyK98ycbNYt9m5VKCUGHZP/s+9vQ+cfXIS31Xnf6dnccLB7h9v4xBlkWn1
         vat4jB7bQSnN+cRr54+JngYwhVyDfCl6TIazL9IH58MUMlRZopqx78cosoZlT5Qgrhai
         E4bsxFSmb1m03oH7P2eRat4uouCdVCH2IYTRnzIUUFrNWD5grFD0ilISlvZ2h+W4Ebbp
         pCNfTvLoyTFdtmj3SXojeiGoF/eTnUoRYWFH38Sh0Q4WPuCE+4Qs27pMPDTVifHgFBsR
         xROA==
X-Forwarded-Encrypted: i=1; AKwUvBygfrqTq20XxyZ+zXJvK8SvegtWGstkp2BGXGhh2kUahhif5sTtOSzZn9sFlgR568NKVSK3frofVNU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLZEvA/yBEF8uFRToIgLrvvbyZEiHm5FH5dO6jvd+2rKapC4IvX
	oGk8BStNmDj3PLvVQKxpw6J+MfX26wBgLIf1tjjMuz3MsAo73lQ3YQXug4KkJNtPFipWDX8wntG
	i7PX5oQvvz/RL+mVJI0gyRRmXX7PVrncAAXGmU1OCqdd5kYgZM1YZb7awHky7vtxfn3cM
X-Gm-Gg: AYBFou3QkT1YqFzulWnJVlfOcfl0PMZFcpGjTpUBhZbbHZ136tzMIOyIvjLGh9h67h8
	NuHzZSgiDY68h0tZiT6vul7HAefdhEaLpCbt4wfQxQYRp0h6KzwCjoj2/BOFsQw8PyeVJzTqixT
	0Npw3pUA35wuCma5y4QLrERYEgQO5WgQPto1lYljTuL8c3IXrwx4iC/X/Y61b8+GaWRVBUx8zI1
	ACEJUyX00q+qHd4n6BLXlT/8s6UdwOMCxeK8+l3nKj3wIlJmk1xusK3N88mKF8Z5WIhyu0MzkEA
	rFqAnBhX4l9QpVhJUoEfUXwnRjdye/ZG19rBRqR/v7RxCv4lviTtTrhFUUpGEvhnWjeBP/IpJs5
	8/emV5CZeS+lrWx5XH3CR8A==
X-Received: by 2002:a05:620a:2602:b0:93f:25c7:a4e7 with SMTP id af79cd13be357-93f29d3b758mr1946130985a.4.1792493588656;
        Tue, 20 Oct 2026 03:53:08 -0700 (PDT)
X-Received: by 2002:a05:620a:2602:b0:93f:25c7:a4e7 with SMTP id af79cd13be357-93f29d3b758mr1946128385a.4.1792493588199;
        Tue, 20 Oct 2026 03:53:08 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b38a1335d3sm5239663a12.3.2026.10.20.03.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 03:53:06 -0700 (PDT)
Message-ID: <69210508-5b08-4199-8d98-67685c8e90d5@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 12:53:03 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] phy: qcom: snps-femto-v2: Move PHY init registers
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
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
 <20261009-phy-v6-5-50408e45bcc1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-5-50408e45bcc1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Ln2c1mTJt0WFJ1hTkAvXbIJXjDwYpHni
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA0MyBTYWx0ZWRfXxXrJwfsLioCb
 oQ9AcgnBkT5OSQs51MwQ6AfEXBKFmPcJbI5VRfKrEedVSi+ES/HdxJWmwj3gpt+UTcTXGP3ewD9
 qL6NzJY8eVpdlnZxy48zxQ8itDA/iuxAA+M48xJtT5HUbteSrVH7nxp3+xvJuhxVBQn05x8LpYX
 MTWb9ElFbBunkxNYP4ZM8P43X8TeIlLTiv6EfpPsZ3zgUQYEQJzRwwxvqO1B0ZREnwYt90XWd1X
 21B11o65PBdvyfa/y0Y90eOZQaCN1K1BWpxMZMCD4oHu+sHkvB/47Y5C4WNYYjpRXiGSdJCXr0R
 gAC95DxWuqfUUrxlumCRqCy9cvFyFKzVvqw2DdvAvoAPbLi0PpEPqyW4JirZuEIQaPdqiMRbM4y
 msDyZv2LXRS7cWoIknbsbIRLxZTyKCPssu3TGSALppVSUMz7zCZeskX8Tm1+/or9wpBVvVXHom6
 nNUFsAh8JtsDMwOGrgA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA0MyBTYWx0ZWRfX5hEc7JlVsQ+L
 NknDIjyctdeGIVnHUOB9/BG1I2Qd7QYOZzmSf5p5O49iNreavRe0JhGfQDbaq4vx9OQRnJEmCAh
 hKgXc3Dt3CNILKoJLgDgou/iJIXu1nw=
X-Authority-Analysis: v=2.4 cv=VI9IDNPX c=1 sm=1 tr=0 ts=6ad74815 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=lPcTt8mPJekVWdHiCMEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Ln2c1mTJt0WFJ1hTkAvXbIJXjDwYpHni
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_035310_296032_81149954 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/9/26 6:49 AM, Varadarajan Narayanan wrote:
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
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
