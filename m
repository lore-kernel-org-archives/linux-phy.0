Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D302ECCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 10:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b46BpoNoWUIrRtG92upTz3h+Ner8POVZLgueLVTfQHI=; b=gv6LlyLDi2SIJu
	3kB32xt+LTYMzB2leUD7skhIkDNyMHC9yJT7QP9HWj6hyC3Jz36En+cY01OH8CK0REAhZ0M0Gu9zO
	c1maXHbnbUQoAIQKtZXr28FGH6O/yPRR8JVdtZYplGQQP0vX61IMoO5L5I2JoewS3vp6YKoM707LA
	blx2sVYvuh2ks5SQ3JDQNNYcWUDqYGfgtfWEcmZQWqVl8A5kCqVmzxUD7wAvQXO7QlZ6B1ebhqeZG
	5uVAy+6+nSbwzHv+LVdtMrnaqvTdcofKPl9BaGX1bx74YWMT5jmt09i3R1X1UpMDi5tK711KVnlJ7
	Be8ZdiHVLYARzfx6BjJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5i8s-0000000HKNQ-2XqT;
	Mon, 06 Oct 2025 10:08:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5i8q-0000000HKMQ-0C6D
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 10:08:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961X8tU019793
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 10:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QRxl7sNo+3DrrqfT4zz8oVLcU0vJGKPO1RsVS+CbIJY=; b=YfI5ule6kP9JUqOq
	0V/aCsHHGfHDFgLPWiT1BFjvA+8l+1xEg/ctS3i2cfNI02OmWr79FINs0Gno9zKj
	4cd5/aUDM667tNjkUpsYHgR27f+SWOWeV1Kge3Go5an92KPh9RfDNJ0/4OPYwaZU
	Kf98yaYEvGnA57SZTC6DeneYK6E2NMoAr3vFri0t3EIg7qGrDBnKnmIleLdJ1t0a
	e8i5wDGJhkCrZ940YaV9yVQxVTXudAiibMi5HKgr0wcsBoOjTN01eCSycVdO3TMn
	Eao/YWyzXKwN8h3F8ktg8U6Ro7lWSttMiuxcZuBLFumk8THQ8JjCaID/s85kvio2
	T8EumQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfjp4c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 10:08:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85db8cb38ccso143120085a.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 03:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745306; x=1760350106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRxl7sNo+3DrrqfT4zz8oVLcU0vJGKPO1RsVS+CbIJY=;
        b=c4Kiu7X0IoW4jT1vDwdZpMlducPch1iqAkktvABrWDPOw+ZoyaT9nzYaJCe/SnNja4
         5m6tVmM7qZQf4c7jCtJUZ5eLsCaLJYHMDCqn5fVyg0P7f53rd7bADMCzYCFFYGSnp5qw
         Mb5agRafLSzpcl1OSRa9G2DQ82sxvpx1NIcPnAM8/QjQdyxPPw2hf+7inakTpRMG76it
         74eJoPLkoJn+yx0cD1XoYwXk8aBtPbh5UZe7PdtPTLekR92zVgy9h/hgdmRwJkEBu4+d
         sH/Ecvs4pxa/HoS8exkBN9vobjPJepQR8esAleu/U6UYkYSlRorQGcO+AKWhZDzihmiG
         vJpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL8YmeyrymfiogHHVi3+lhlFqy/vJAswq0RiJNRE7G19XfW80lThfHU7OebTzy9K5xXJECYjyBqeg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBUl0f9xuMI2WVNhYkZ3zIPkv2MtP5VdI/zzgzcaMYivz8VXcf
	iPaw8MQ9iFqvbFF278UCOaiLuK12/+G5u6gqchZfckb4VQ4yRUIoTRRZFiqXN/hEwPWwz4PcINf
	LXMxl5mhV8xEF6iWZE9+gYgt5pX6YULwp+F3EZZF4k4msQUeAkzcH9eo6RBywq/t6ORdo
X-Gm-Gg: ASbGnctSih+5+VH0xbloDEd/xfnBakeV/1MdgYzABAcBw5b3Dt7OpL86jhAI+Mx27qS
	Rno38yxQ4Ijyz23juskYYPR5FQgtQyyHIsKwouJeWcwPbcYzNfohIdLiCSw2LvGRhon6Asf0GMR
	huv3stTWWia+802gz99YCLHswkZBoruyfCW+1M3OuthWfrZI9khPLUIvwN6qfSxzR2uRtbTVEfY
	/PjxcuprmimNQyFLY4xvvMdW379VaE6DfLzet7jedsiHEW6XIehYErQM33x0cSxEUQ9X8sn0wwQ
	74L87P9HwDL4DjLGq3MpCeFN9Du65qWugiWbxwXy78Bp84iDgD4mLcRfw2QGqorAliQWB0jOj3N
	VlAXX8AMKDY04oCOPdsLJNt+Rsj8=
X-Received: by 2002:a05:620a:4546:b0:85a:dcb:a0fc with SMTP id af79cd13be357-87a3808f27bmr1139716385a.13.1759745305974;
        Mon, 06 Oct 2025 03:08:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFimCYf0SKFbzC3NSXsI5tRolyrinxggfXfZDYyrYmKlPpBtRE4B1n+BKu5V1NHf8AkVOgEQ==
X-Received: by 2002:a05:620a:4546:b0:85a:dcb:a0fc with SMTP id af79cd13be357-87a3808f27bmr1139712585a.13.1759745305366;
        Mon, 06 Oct 2025 03:08:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b5acsm1107908066b.60.2025.10.06.03.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:08:24 -0700 (PDT)
Message-ID: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:08:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
X-Proofpoint-GUID: KcigS26wvvTwx9phd5C9Gb9M7WjQQZBZ
X-Proofpoint-ORIG-GUID: KcigS26wvvTwx9phd5C9Gb9M7WjQQZBZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfXxDXRgheCLIrB
 iTTN1LDAyi1whGPr5k2pWHQvdqw9lFZ8dvqvaMPXSUXwG2j/yqgS87RypJkntY3/9JtwDXJdNQx
 wnO0XUgGdamAOSQoyWklTPf9BcZkAhiH5sctfIA3adsVPMdPYxQkXZWIXG8fA9MMRW5IRmKxg0k
 ra0iFdUkzWMhPbSqigv4nPywz3pibYLe265N0HBRO/9338Mwqi0sHLnFDD1hjnSvpLImzxZQ1yV
 Yhc7OD4udmnZBczEo6UJFAV2GY8yxZujmbpTHIC1YrcNbsng5CRdPTJP1IUl8a+vM9tbu3slReJ
 d425TZX3NLpwlZ8BowY81iKt99bAtLYBX/AveTpYLXCy6HVBVZEw0AO6Y2PjVdMRP6miyz1MUdv
 dCKh57si6M8S8An80r7naHq6MwU0mw==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e3951b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=eg4Xx4S7Erm8exKiWv8A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_030828_092638_F64CFFD7 
X-CRM114-Status: GOOD (  15.93  )
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

On 9/30/25 9:39 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +struct qmp_combo_lane_mapping {
> +	unsigned int lanes_count;

"num_lanes"?

> +	enum typec_orientation orientation;
> +	u32 lanes[4];
> +};
> +
> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
> +};
> +
> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},

This is not corroborated by your bindings change ^

I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
would be TXd on

> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},

Would it be too cheesy to check orientation based like:

static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
{
	return data_lanes[0] == 0;
}

?

> -	ret = qmp_combo_typec_register(qmp);
> -	if (ret)
> -		goto err_node_put;
> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +
> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {

of_property_present()

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
