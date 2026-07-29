Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6091FC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 08:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JamzGephJ8Rpmkz0sx3UAnKzVE2q2kuHXmBoGm4XB9A=; b=Xj2wAbMOGO4NDs
	AtL7n2AfbSENA710XR8/exGepZ5brnm27qpm8IIzoXHZHbsf9uLWs0t8QRoWMCHKCdXdaDCBdFeZB
	ChLcX245DEijQdCX5RUVURdWMGFsXrnSgTyGzL0lu4mrn0fuIA80YZngDohWjxp18Nxp57pQqgJWu
	ZnFXzshJnHTwOoktu83PLYXsCmE/M/L7E/7G7frm8P47fQqfHHUSN0QyebCP6GTAKRiHdXn4RxHc5
	zuKgOm6BCjdV/FwgO3XluNqlNSgcc5W7buOQ+6jTNE8Uve6dZn98neFUoBU0h/a75DK66wi2nh9C7
	UxRTPVjakHQMXfXs4lUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wozgS-00000007Ei3-2nFD;
	Wed, 29 Jul 2026 08:30:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wozgQ-00000007Ehh-0kIB
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 08:30:35 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T7f0jM944366
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 08:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	taUkXjqd56QZtUnPVegV2/U17mWYpbYvfF4/cskROPg=; b=XAjw0fuLNy/jVuRs
	bw1+42NxWqrrIwWQKMk8y9pXIGurnt9jZnSDbvL9uMA3LsCalRgaukAhAedITlzr
	FNYgr2IbQgNXpCrHYpN3NyazMUH+XiJYlPoufuDGj0NJ82bsIOqQ/9HKESaiqkoF
	ZXeoSWF4QS17ycOtLdSDMuFAk6i6KIl8rwqIhK5wy9Ge/tupyWZBUeFHiqD9UXRA
	lmLz829THJpUtSntKnTtYpgHN/2p9cTh24VPI0PP9N4zZAwGnOA5yaUqvQkPaoAN
	Trn5Ma0HE1n+rGUIk9LnPBwr2Y8qLFt0bYQIxX3ViLV7i1HJZkUI5apQUcSbDB29
	ewkCcw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqbmm0mjx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 08:30:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93163ac056aso9034885a.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 01:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785313831; x=1785918631; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=taUkXjqd56QZtUnPVegV2/U17mWYpbYvfF4/cskROPg=;
        b=V2C5Tqp2CtylQ2v/mM/cdlpAarkqoIeIH31ixmvxoxnIVTgQZiU6Y6GeEgd8ZXxVK9
         4gk5jX+vctz0m40LoBfF9bh1Rgeu4tplMjr1yg6wjFTMw9s/4YEaCxf33aO1oBJlXW0S
         EmJOz4tbwa1SlITpQ6XE/+OgOc3xlugGYwF8qFNyqwq9soPwhXqKO71roXzrNgqpSy+4
         QJHc9Gi02QqRQ7D0nGPIXpj63VvNwEtgrwdIx1rvMWUnwWXFWD2uO69PWxXDm1sXEsYg
         +rW7PYyRQCyzNNezV1Ucvd2XyWFTT2GeUi2Zv3qFnQy3LV30CfI4OdcgEP+NMHNkgv0F
         fBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785313831; x=1785918631;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=taUkXjqd56QZtUnPVegV2/U17mWYpbYvfF4/cskROPg=;
        b=NxaJwIDMSKGJNiSJddFiJuo23ufsHFYu3JU9PXDp/Xs1c4/RKqfzcfU86yjlfoEh1h
         mWZCxVyx6oQRasPEJiaGjPjn3L5sbi2m7h6g0gezJuCsSwXwnZqoL84ZSMAVK4m99meF
         XmUNUCaOPny/2DvplNcEKBhFaJXWaWt5ZnX8jC9Diw+ASM4C6t4rdyg3GpPCJmhNrQf6
         mjowCj6KW9JAMTo6dLjW5faQjYQIueV4JJekRYBNvEPmKnMuT2IEJL9XXvAo/29TrC9G
         yoLyNhXg/PjzgJIlqGZCxan4Qq7nhv5xnrIg8/DoXj/XuTdg+50rhRKjYwaj1w3fEp7V
         peiw==
X-Forwarded-Encrypted: i=1; AHgh+RrlkVLZWk7OZG0w84n9HYNz8Ab1SDnsV83tpqow8elhAn3qfNqUCvQ9Lu6wWDICkfipictQYK04tUo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyseGXSACz+Uwac4j7A72T/OiApc+eFeIT/v0SYDIW7QBkpbY7h
	eVPSWBmdq6GkOVzAgqtxFNAPficMiBJ651unjSNqDR61UCq47FtBWNyB2cmr6yJaKv5yBy76ire
	6UPaI1fzFNtVT4iswcyZAig02pIxq79bvk7k5XOwAWOr+9a/Uf8BDur5T61Ii5ZNSGFTo
X-Gm-Gg: AR+sD108ratzDdKvaMPK64SfaDTxKbNukAg7SAz5GtnZeHu+seuHsF5rXqicheXE33E
	jDj9u9QDY2tlPBLllqY7qOmPIpzIQqaV0hVYB9ugAvn7qsvKLtcVBuvlrCNyx7c5+uFM39ibLwS
	z9XcpZtY7cfR9TmglJxrdtZbfG3iCiO/En97ysPZDPUc/a0h6v8FgaYMIrdVpvelxZKnjOzS92Y
	VfMpcLlfqNUf+y/mPh8a+mjVtchdvncrPXwiTtyVnQT6/4xi1jAWYiVnOFr4raiahKwZYZyaHCx
	fg9TVhwI5V/JpC10iGXscQjp+yPWK+sy0npwHdmSo7Fs9W2YAP61RBG3I5mowvwayHhCEAkNc/m
	m6PBg70dEwRD70EbwEg7QVbbx
X-Received: by 2002:a05:620a:4726:b0:92e:6485:f640 with SMTP id af79cd13be357-93302671e18mr523006985a.4.1785313831431;
        Wed, 29 Jul 2026 01:30:31 -0700 (PDT)
X-Received: by 2002:a05:620a:4726:b0:92e:6485:f640 with SMTP id af79cd13be357-93302671e18mr523002885a.4.1785313830916;
        Wed, 29 Jul 2026 01:30:30 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1f8f981705sm28440166b.9.2026.07.29.01.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 01:30:29 -0700 (PDT)
Message-ID: <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
Date: Wed, 29 Jul 2026 10:30:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
 <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: Bj23_DOmSvV4OrX3_BMLEzVC1JGTDQ5J
X-Proofpoint-ORIG-GUID: Bj23_DOmSvV4OrX3_BMLEzVC1JGTDQ5J
X-Authority-Analysis: v=2.4 cv=R/Uz39RX c=1 sm=1 tr=0 ts=6a69ba28 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UQj4KVIS10MEeeuzceMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDA2OCBTYWx0ZWRfX52e30pBQbPqN
 Bm7CF4iMIlWD0ryiYYjhUGBVVml1xMTI90o8mjGvMuMLF8RAQXQLYbqADC/VXCWo/dmTAHxOC6d
 K0CZTccpMBYpNeb/8+abQ6iduME8zjOzynsa6WDRNwjWbmN34/c+L+tkEK7Ky1itWYG8awxa2cg
 uctC4M3UoLpaq789FM9/0F+6QCnu06Luazj9Ny3HhStsQsb519Yi9XxnfcbMVytthFy8WOSyXLQ
 5gK1nxL+T+fnnIqkvkdiVd6XmjmB98n0bGKby64lihtlJRCFR1n7OfSYhjUD42OslZ9GhTk5ax+
 gv8RKpHFnqUco4QwlPN6kTtfO4tmt7vFdFKh49VjDMKsdcLKPAlPsgV+1fJVOuNLHKuUL0pQNfI
 kc9/Yn6/bfBrglslcZKJhv5q8hskMgUQZn2DiwENDs8jVlah/14bIh2reN7MaWcpTcWToKj4BsN
 4wiyDUWsNOblgEi41ag==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDA2OCBTYWx0ZWRfX1dM2guhjICW8
 xQpCR3tObZHf31ecsCiDTMN0xD5BWPihDo0uu7cRTGMDHeVPAgf5sgVVFcKbbbEWOAmxtD3L+B+
 R191htye7sT8NpvKOomTsjAfG1btH54=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_03,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607290068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_013034_234298_BF77C230 
X-CRM114-Status: GOOD (  15.72  )
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

On 7/29/26 8:45 AM, Qiang Yu wrote:
> On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
>> On 7/24/26 12:01 PM, Qiang Yu wrote:
>>> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
>>> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
>>> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
>>>
>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> index 6125617de82a..0aae613a33ad 100644
>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> @@ -28,3 +28,11 @@ &mdss_dp1 {
>>>  &mdss_dp1_out {
>>>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>>  };
>>> +
>>> +&pcie3_phy {
>>> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
>>> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
>>> +
>>> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
>>> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
>>
>> I'm guessing you also meant to enable it here
> 
> No, we need to keep it as disabled because pcie3b is not enabled by
> default on glymur crd.
> 
> See the fake pcie3b_phy be dropped, it is disabled
> https://lore.kernel.org/all/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com/

I think there are SKUs with dual-NVMe that use it

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
