Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF5CCCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 10:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0UObFsZ1lF1nJtz1E8OHw6C0QLFHAUTpUlIH63M9mU=; b=XMBfyfgQTnM9wj
	Omt37j1kmPWUB+jRRxiiBDo8RrxruHS80YJK+d2CjD9lsvTjB0/gd6gnFiC2dhp8zITXiCd8l8J+d
	4t1CjldKTAywJkJPfsSgpgg+w1S6p0MDrR/NOScvEgr4/iXEL8/bWgEpvoYaYJN5rzvKalrYD3Qtc
	OH3N8Q/9tKE5qLD+/fQQmRVSNCwC4vcEkJe6HYJ7YGEREWHBuqRYHAvxPTj6GVLQHsKFyFz11N3JT
	nwH2Mali57AAW7M5bhP6Vk1Q8HM37rCwHUKb9nhoJk/hLHDAw1Yman2qM4NOfLABrdbegbPNs6YsE
	XBmc6KDI+r+TcvtGme/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5iYu-0000000HNVc-2lJY;
	Mon, 06 Oct 2025 10:35:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5iYs-0000000HNUD-2X1R
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 10:35:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961FC19016527
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 10:35:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/GVt1K9Lflbj12O6/RaG4Mti
	+z7CPLMv3q3Zlvsed98=; b=bZo+kfQzbY2w14g+9jjoaiorc2gFKSmmjrAZdx4v
	2cTdYL8jmknRf+PryJo564MYnyPaNeyff33SJYOHctCuZbgQIoZwrEl0SmWJGkVh
	6viz29fRyKqYPn4J4iKz5gqjfogUTuUiqz3XpuQ5UJfogW65pgeNJoZ1SmBVdEQ2
	yU5TUiXE6uutxE5wzfXe87XMc2PbRfyQCYS0mdQ0aUGiaYrL8R6fpBLCfLUeiq/8
	SbwZJ4pk1mhoUbpAlvd7msAajxhVP/Yfmsct/++485ZjMmGJcjcsRO8twyJnWGXz
	3ARxoE8FARPiRMCxOgkoU4ZQZoWoKOlP4HwKVuIEnXfW1Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn3tu7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 10:35:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d905ce4749so96971731cf.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 03:35:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759746912; x=1760351712;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GVt1K9Lflbj12O6/RaG4Mti+z7CPLMv3q3Zlvsed98=;
        b=Qz5gToYWNaqlU8IhsLL59gq2AoMROu18DP1Zo2z0A4fTMHV1WFNs783DO8c8QLNV2C
         gIVgIH6MPWStwGmE9NbIEucHPIeZSqISSx57qKwPlwuGvxJW/kyVHTeotwEbtWbbrIUx
         8hS+n0ojt0G+MVs1NZnsL30BQtbgoAF37/2Krrto3+12RlYMScGyJe1ITIUXyeeneYfb
         6tP6skeYPzj/ZR7yd/8/6JkObsIgG3INrtI05k4xlRKbE2tOJtW0ATwpSj7XXkws3WrO
         vFWiE3AvY3zTU9Hhl0fS62fu9k4+VQt+mPGePXxU3S+ZKZtrKZ6Tte14McV7rVkfynOp
         xCWg==
X-Forwarded-Encrypted: i=1; AJvYcCUScODLGDTCpoUNYnIjccrRZ404iykJ5pctMEhoP93sw5OgAwt50j4IRR0jkOeNi/yIynolo0C41/E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhcR5wd2jvmisleY8eMaK+uWx8ZIPrAgB5eVzvSmuQSXcnidfh
	k/BurEAIBP4hACO8vesfL2nLy4lsZnmrxhVnJTyurnZh0e/SA18XqOaiUK5ILVvqGprsW4I44eY
	ALJVcSo2qXAy1ABei/vK56GCYOmy9oKdARxj+oKWYy65BmcRv6vK3Dcs139s3k9t+kkno
X-Gm-Gg: ASbGncvQwqdJb9mw08iQ+BbBsC07GtPbCMgBHin7+LurbOgM7sk4TcDO+cOWA+mT5e+
	I3vrs4BA+TmAbghoHdVpAa2+UBJIIKGD1wBYTC68O/JUXzkB9LVk9IpNuK5Mogz2+Zu3AgWkEbZ
	5hCs01S4tp+Fa1WasJjJjXwbkwh7DTcUHZhoBy5gVhD9GNMaRd01Q7IqiAMnowbMJf9ZeVZRbTj
	xtguruwvL3LxEshlOfGCM1yhg2kyd8h+E4KHJ+BD0O9pKjdKNOmTc9BbrqH1aW7OU0DGdSlwzDY
	/v0pxgI56Y/8+SZY8ka1w3nI7Nr9lUSiWDOafqDgx23EwtBdMTxBNtPsEfx9kET4xWLlyXqbYOG
	1LJlKh5iTrJkLT+7wOrjmtNti2H2Qn9vYio1g540OhUpyS6C4AJNFf6gbOw==
X-Received: by 2002:a05:622a:4a8b:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4e576a45338mr152170481cf.8.1759746911817;
        Mon, 06 Oct 2025 03:35:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHD7NGFTQ7j7kDpuOlH2JVm1Bio02PxWYP8W51tf9aEfgOxa//y48qL1owpgFsKldjyFIyTGA==
X-Received: by 2002:a05:622a:4a8b:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4e576a45338mr152170291cf.8.1759746911251;
        Mon, 06 Oct 2025 03:35:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4cdf47sm43332131fa.52.2025.10.06.03.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:35:10 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:35:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX5XEwI4C7AWeG
 wTOWX/n0kmXm1UJS/GVwoO1cwu550BvqbSq44rWcuDi8nvlDNcpgBTXwlFRyeiMuIE/5qN48zLp
 XdEbKfDRVdR5qKALrJQ65isXpYdFOK2PhVHirp90rnvPuI/UMEulMwzL0q92bf3qqQMNrBsUtmW
 iCjQMpGnOvdSCQA/pqXaLwZ5Fc7t2OD8vQVPZfuOg7EziGSEQ4CC43/3ek/20+dIO2pulU3OX4o
 /OMq6qL1vEKAASJdyfwtWDBW8lAdPloOWZCnhZ8SSJB8vHVqMbYgTLPkcJgdxnRvLy1ApP565xD
 PW/9mGM6Nog/bezWo7LwM1Sl0VLyc6LczQCEE97keXVw5lcLckZnFABxpVT+DOEvJxMifJHIDcX
 584u3N6jKnQ6AfUq9I4eVGkxrpr5Ww==
X-Proofpoint-GUID: jJzTUfXejDfNKlJfZgqtd613hngPSwoD
X-Proofpoint-ORIG-GUID: jJzTUfXejDfNKlJfZgqtd613hngPSwoD
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e39b69 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=LC5ovIGdoV6AwfhOO1gA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_033522_757577_CE0DDCE8 
X-CRM114-Status: GOOD (  23.60  )
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

On Mon, Oct 06, 2025 at 12:08:22PM +0200, Konrad Dybcio wrote:
> On 9/30/25 9:39 AM, Neil Armstrong wrote:
> > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > of a combo glue to route either lanes to the 4 shared physical lanes.
> > 
> > The routing of the lanes can be:
> > - 2 DP + 2 USB3
> > - 4 DP
> > - 2 USB3
> > 
> > Get the lanes mapping from DT and stop registering the USB-C
> > muxes in favor of a static mode and orientation detemined
> > by the lanes mapping.
> > 
> > This allows supporting boards with direct connection of USB3 and
> > DisplayPort lanes to the QMP Combo PHY lanes, not using the
> > USB-C Altmode feature.
> > 
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> 
> [...]
> 
> > +struct qmp_combo_lane_mapping {
> > +	unsigned int lanes_count;
> 
> "num_lanes"?
> 
> > +	enum typec_orientation orientation;
> > +	u32 lanes[4];
> > +};
> > +
> > +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
> > +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
> > +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
> > +};
> > +
> > +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
> > +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
> > +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
> 
> This is not corroborated by your bindings change ^
> 
> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
> would be TXd on

If we follow the standard, it should be 3 (RX2, TX2, TX1, RX1)

> 
> > +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
> > +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
> > +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
> > +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
> 
> Would it be too cheesy to check orientation based like:

That won't catch weird errors like {0, 2, 1, 3}.

> 
> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
> {
> 	return data_lanes[0] == 0;
> }
> 
> ?
> 
> > -	ret = qmp_combo_typec_register(qmp);
> > -	if (ret)
> > -		goto err_node_put;
> > +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> > +
> > +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> > +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> 
> of_property_present()
> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
