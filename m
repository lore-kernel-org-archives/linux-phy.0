Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70947C624D0
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 10:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5zkR6obUtPHhqkRRmMUU84UyBZYV42NMFC+cUMCyMk=; b=nIeRywN6JpnxOm
	r1OvDArLC3l1uotBf3US8zhBMu8DkzKSs+j3OT34XxRFSJ/CcFQwvCJ4CdhmKoFp4c9kjvQV9Ikrw
	ZDQdtSbYoPz93NCdqfQ1m2DgACK3wWPZysVdsN2TtWrGn8oR/ZtdmyaMLfe2GmpxBh04hp0r+zM9e
	ho44RbpF3H4SbZhCb80cSnEu/tLAvAP/pKTMZNj9h3h3flz3grqnmSniKxlpFQNrckgO25aid0YRc
	gzPTTIIfpghoVXPpfdjZgEosdbml1+Kpe71EY1GJ+2BZFfWncQxy3a5vygwRxuNC7XXr126Uxn4JH
	1M0+v3aHN7Wv7X67Ur3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1iDJ-0000000ELmY-48EO;
	Wed, 02 Sep 2026 10:29:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1iDH-0000000ELm7-2zkw
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 10:29:05 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6829MtRT4141323
	for <linux-phy@lists.infradead.org>; Wed, 2 Sep 2026 10:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TdOfQSqLmWJ7y3AMgqR+vy4CjQvTB1wFH1GkCyGK4vc=; b=TuWlE+PEE0fHl+Q+
	Z7tHB0FNlZLyis+6uv07INbF2nYVZdRoJ+svY5ACNrl0dQ7DqE00o7BlnrLI/Asu
	s38/IVguMpGDQid9B7Whs1FHbi2SlIWEkyQbHU2UWz6lj15k02oN/3xh0zZepY0/
	7I3rpZBQRUd5tn7LiQOGnkG4HPE2ea4EjhtRpjt3Wbiim26QShD+YcjVTQTtKdGm
	dKb96JQS2tZeuufTmb200IGGDYSSHbR3aYRdC2jKt5zQjkuRl+3Lw+BNQmdEU7aR
	uwsfJmrM7P+viUve9DEi+tnQYkN/Vs8gS3oi3soF7vXC4XfaH5WCAD5WqCtyRjwN
	DcDtsw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ge39ckcsa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 10:29:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9375d92d0caso19103885a.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 03:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788344942; x=1788949742; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TdOfQSqLmWJ7y3AMgqR+vy4CjQvTB1wFH1GkCyGK4vc=;
        b=PdE0p98wb3wF7Dy60hngTBUJkOjw5Id0Q6wHNBoHzoKGuiHQFdO7Q0ATJVEs2BVb6y
         GGRCYuZrdmzzeUu0cD448bx4ULM+dV0dt8XsJIRNbIXf2SHnUu1OnOLYBG0MCiewb7TI
         rKTiuDdggZxH9klQ0TmbrJsad5Lh8IIzSzAMAHNCQDVo790UM50+/oJR2YAnDqB6bCr3
         sYa57D0KWyGGYcSKSDd/xB15crfLXr69QukzGa4Vnk+b6XyGWLB3HpN2yfTbl0a0QWYE
         EgVoSyv+NCgKFNhtMp26V9+ySrpndjsRJYoolwxjiSy7ldTt9L9nlGLlTrxyb+kNO4uY
         4O9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788344942; x=1788949742;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TdOfQSqLmWJ7y3AMgqR+vy4CjQvTB1wFH1GkCyGK4vc=;
        b=YPbvDVezt0WBgOux0xGA9V3hAwwO1BkJbDHGX+ciyQYXjtmzE3Fz8ml5hiv8oRHauD
         vQx2IjtzKMEaNkhDgJwEszzEFvHfpw0ybKEvhplvKGBbBffeWphX4VZFe9FnCGzmsn0r
         X4AWVcQbUQVtq0In2U1B510aA+QS2VOIc8FNYvHx+WRkV8O08xpQ/kZ02t7EnyTsAMRK
         deT2Rbsgo/6lyG+Ct8zba/RBQA+bqVL+ex0uYXospFj9ZPZp8GGIbmKdzCtEFToqpZyd
         sptBxzFpQTdRQ8ZGO8+8r6Xgy2T0VWCuHGQJgPnJEBROrH6I6P4/XB5ytRn5ryhHVe8z
         Y/ng==
X-Gm-Message-State: AFuF++nXr7LLP0mvXHr9ImB5pYHH1PnLlBK0By1+cTw7M7uleiaaYIU+
	x+wVvk7CMNiZr1F5ymJvZ7Y3jARs0IXDQKVyWqTQBTCmqM4ER37OnlZkl0KvnCpb3YkYnWh2wyf
	My9MFOjwEyjUMQYI/XszJOtPWmARhmOLQFBLptM1PI3ZuHmrgznCgZBuK4hThs/3uIn7O
X-Gm-Gg: AR+sD11TyaKhe6qii8V/2KI+kulssFoJkxsRAmbQW373398hUz68835ak4FMIwH8gmg
	UMnWuZgmaunchfuuE9oeAz6hAvK8uMoYoy2DfYiFeYtGMRSbcL3FoQvbsxjVt4mSC07oNW8rYAO
	HTqf+69O0tLdBfKwnJjJj+dpJWPDpzZ2Wt3JstOto+OWW7IBa9J3nNAGS+nmL2AGntx67nBji/H
	Q5GYvdD/EqHfj+YTPUGkCsci7mXI04MoRLXlVp9vCPyF49jY8OC50EXtyuX2fG+RgYLeiHWpe0T
	9sWhUaYBP0WF1UxMqUSAh/1hgb1Atqc5njtNCN4+zKvmkinTvtyRYbhBEtEu17w59chlanj+Laj
	Dcwb2LCS1besuH7Z8HMlzkA==
X-Received: by 2002:a05:620a:4623:b0:939:48e9:51a1 with SMTP id af79cd13be357-93960e1e27bmr241295085a.2.1788344942232;
        Wed, 02 Sep 2026 03:29:02 -0700 (PDT)
X-Received: by 2002:a05:620a:4623:b0:939:48e9:51a1 with SMTP id af79cd13be357-93960e1e27bmr241292085a.2.1788344941785;
        Wed, 02 Sep 2026 03:29:01 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c25d002dcbesm109123366b.16.2026.09.02.03.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2026 03:29:01 -0700 (PDT)
Message-ID: <3d31f750-750b-4561-96a3-d265b632da6d@oss.qualcomm.com>
Date: Wed, 2 Sep 2026 12:28:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
 <20260826-eusb2-interrupt-v6-v6-5-ae2601cfa80c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-5-ae2601cfa80c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=T968ifKQ c=1 sm=1 tr=0 ts=6a97fa6f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=FycFWezSpWEMHrBiXq0A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: TCtcoxFqqzb1dleoFd89YRPnorrvuQT2
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAyMDA5MiBTYWx0ZWRfX/AiVZOCPzeJL
 aR4RxjN+ZTCDWdbOvV9FnL0kpj1CP8m4jEQAvSwuWbidBLIvyq7mjx9JYOz4dVQ8UG3fwStS3kK
 L1np4hUdmnpFWJ+LIRTBVoEvrZLbcHM=
X-Proofpoint-GUID: TCtcoxFqqzb1dleoFd89YRPnorrvuQT2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAyMDA5MiBTYWx0ZWRfX9QMBZ5y6u1wS
 YJTmHhg3jTKIC6sDUeNrz27DvsTXS95KCw4K85X5GxE0g8X9W9hGJTBkO5tb/NVbFe+kQNzSnd9
 xKh1TL7CwMej2ger3SnNzptqjbsBhbcZWwhgcHM8BBoP9EGOMgSRSd99U3Vr6L7R7V3BmyC/oHp
 6XEuyeF9gmgNXBN5OxMEiRtXtD9IzXQDgsENTTvsyhNUAejiRIGdDoJcgkeg4hOcDa6GDt13VUD
 vEEclwqCwyfHz19s/ctdkyu1bOsQoLCy4wpWdvIOwxh+mc7xD6bkm3V9FbAuCPl0LvzilTq4+OC
 6i3xpfABbYjO63erzolZiT2Sh9wLUqI1KcIsTmPonxU3EuLIVZO5v++4TB7F8zI8Rp98fEeo8TB
 VEoQZq7iYc6baQX3h2OdU/6fXQWAjGvS04yXwQEmVh4NoYH7ftrX/6m8gtW8W1DlcZqJpDB++QL
 ibKmNSvg7k0jcuG+X9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-02_02,2026-09-01_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609020092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_032903_811042_E9EE7820 
X-CRM114-Status: GOOD (  17.13  )
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

On 8/26/26 7:02 PM, Krishna Kurapati wrote:
> eUSB2 targets handle wakeup interrupts differently depending on device
> speed when operating in host mode.
> 
> According to the eUSB2 specification, remote wakeup signaling in host
> mode is detected via different data-line assertions based on the
> connected device speed.
> 
> When a low-speed device is connected, the host repeater drives eD+ to
> logic '1' upon detecting a K-state on the USB lines during remote wakeup
> (eUSB2 specification, Section 5.5.14).
> 
> When a full-speed or high-speed device is connected, the host repeater
> drives eD- to logic '1' upon detecting a K-state on the USB line during
> remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).
> 
> Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
> eD- line states, query the phy type and configure the wakeup interrupts
> accordingly.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

> +	phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	if (IS_ERR(phy)) {
> +		if (PTR_ERR(phy) != -ENODEV) {
> +			ret = dev_err_probe(dev, PTR_ERR(phy),
> +					    "failed to get usb2 phy\n");
> +			goto clk_disable;
> +		}
> +		phy = NULL;
> +	}

Looks like we don't have a devm_of_phy_optional_get_by_index()..

> +	qcom->has_eusb2_phy = phy && (phy_get_type(phy) == PHY_TYPE_EUSB2);

phy_get_type() and generally all PHY APIs accept nullptrs just fine,
no need for the first check

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
