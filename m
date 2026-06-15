Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6670FCD98D6
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 07:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCpDaFuFk+EK0aNIz9Cn4ui+weuYnhNQN3z0UDNLAY0=; b=QAU+bGyEF1Bj3T
	WiKXMJd2suVMg7KRqYAT5VsZVZhuCP8yB5qjCWEEKgquZBO5MI9lPJvBhnt2TKfao1kCkwRklNwsY
	xmN13WC22wE0ZapAIGp/BleOsyEG6nCppumgrkqsdy7vb8KWAfcHfns1RT2fBmRBuziXNp1ISmEbT
	6euxt9Tg1nog5gWoxV5HqbOhSAFOcmRSD9bGcWvwUJdLAgN04sK8NxWx6pdleNuFvpGn3b3vz6pPl
	ijcRzLyk0PPYBJZ/TTLt3td1VboPDqX9ozBU8k9Hby1vwg+3Cprd8FdIVWQRRnEz1mCQv3yreu1m7
	VwrGGK0jxAA05Yov2UcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1uz-0000000Dnob-0V3f;
	Mon, 15 Jun 2026 07:39:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1uw-0000000DnoD-38Ct
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 07:39:36 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F6Kxd23888456
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 07:39:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UZp2CdAOzWMP9vNOOQFjfC/K
	5baWaymmSjQGLpC8WcY=; b=ZKvcTkAT4GvL5Yp5yQ68MYwSnHMLSIV4+ZgzzPw/
	kV6yJSNcbvOabzoUO2gowjOWsFamE/su+n08PAKzUBBSK8ev/KORO4upnF6IuO5V
	v7nfFBe+cYK6eGEwIh0nr6E2u1XPPFPy70l141hewHPUAhmh+SrY1nJM84FRJt9e
	qgDDJmqOfDCLBoJajA9LpMW7Cr3py5PDmAX2jqHotZ+OEfQXrGE0J/uuVCTEi54X
	kyYDRYQsxByTd2VF0NGkeL2/qmxex9Ey1mbkhm4/WkSR+kUZiAZSsR3evr1RJ8Am
	VaF0Pk+hwuGoykPBS/pi8AwGXlyPQz2s9LhXjvSzXUYn4w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ery8wx7xk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 07:39:33 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36b9d265308so2220570a91.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 00:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781509173; x=1782113973; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UZp2CdAOzWMP9vNOOQFjfC/K5baWaymmSjQGLpC8WcY=;
        b=LrMmdIWWa1Tq77FTcH5GAyhYqzBklzsgmwsx8F4fgj7ELTTpg3A/fwAwbkUgUgRYht
         YmDNmg2P1glCjDrK+27eMphOp+W4eiSjXNfSPQVxFctUvf9h0v1I43G+vgRN6QKb3/WM
         6vCghKQ4BGC7zf97K0nwECfEGQ35+Tw7R82SNb+emLzqlmf7NcXT1dv4S85UjNIKxZzj
         nyqjwK5rJUEWHRgSLpR6RBu3JssyOz1JmIWuPEvP/Or66cMeNFPHFK8fyuhOg1Qye8CC
         x2Wy5UJkwR5lln/OhiY967+7dAHD/JigYddBq24gehah9e8kNPifuDy1AsLxkyKOYsMX
         4kMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781509173; x=1782113973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZp2CdAOzWMP9vNOOQFjfC/K5baWaymmSjQGLpC8WcY=;
        b=iyyccWQzVPXqZbL2jtp0yN8sjd3sq5khgcWd5QESL/VbV69H1nKNRItyuVjOdBRDIM
         rE1HSyUz5jTkHCs84QYiYx9ujphfS6F5vz223sV8J9ogWsfD9yCcTr2o7SzhKLPD5xmI
         4gIF9fsb3xdX+kKdXnHkzD/pXT7+jj1aAvHTw82xwqvtKGuuDmuClUg/DhiSHaJt/xH9
         xZQfdhvLIHWqzSCNWacOaNDm6T5gBY4Zo8sSH2igjPWI6t2W7lFQAOBfxGqBCuZcjfR9
         /c1ffIhGl422QnVVvm1P+bf6AcxjoMTfcHcBtuuRWlOuHu8IyHqLVvqu+OE8Xs8aOmlO
         RVbw==
X-Forwarded-Encrypted: i=1; AFNElJ/ILftg+agHsAeozUsPEckeuZkffQCgukEEyRkyaKlQoCiwEapdi41mutqc+9ckXMKxCVkaS19MkN0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlIJTTm5MS5IqxTeCFH9GRK8/sLDH4RuU6FpDkdw6pDdgYMvkA
	z/PeCPYzz3hAz0fBTqdH/G44U4RfiIUGdTyQ5JuMcekkfUbl+PtfuJis8WjKXG2CSM3VKtWltfi
	XCjemLqSUXwJ/TQQ2Xip18UpwEzt1ONPbGaw6pnSWN6aKO22CgBHOCV6R3H/euOZUdn3/
X-Gm-Gg: Acq92OFXMddIpB8w9H6yq4lBta1vdNrUa2jetftxCYil3tjWS0fbZDdrP59TydZwwnP
	6VPY2In0lpdbL7XLai4WocmSvZoIBPKnKpeSnDLkIfHZhb2QAn5zO5jtAEpAIWILmklsitR03cb
	Tg5jnpX3dPVQ+VgyCqSZWPLImvHO0VPsOXaV2nYiL1jJadJSTDNDMwTebVQqdg38wM60TjkzguH
	TpuW01HsByRVPrWcPSoPSVhtXldXDfcFacSEAECMkUnQ4u0GgbUHDBVFUwjGhFNHpIdHoEgKxbD
	erX5DngUA/qJ3VrMVnk8XFMu4bSEXARllqTHGYUReYoH1j8OmdqDxQnazedIzPWh0+BJ4RHJK4m
	sWsGIziUu045Gta/AlqdCw+2OArG700vzCJIlqWWdfbPXZ34xj5LXCuMf
X-Received: by 2002:a17:90b:3f43:b0:36d:79c6:1562 with SMTP id 98e67ed59e1d1-37c2bd7e8d6mr10389164a91.25.1781509172675;
        Mon, 15 Jun 2026 00:39:32 -0700 (PDT)
X-Received: by 2002:a17:90b:3f43:b0:36d:79c6:1562 with SMTP id 98e67ed59e1d1-37c2bd7e8d6mr10389142a91.25.1781509172228;
        Mon, 15 Jun 2026 00:39:32 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37a25ecd66fsm12016278a91.12.2026.06.15.00.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 00:39:31 -0700 (PDT)
Date: Mon, 15 Jun 2026 13:09:24 +0530
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
Message-ID: <ai+sLLCjdWQt3NOC@hu-mchunara-hyd.qualcomm.com>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
 <20260604122045.494712-2-monish.chunara@oss.qualcomm.com>
 <gq54nr2bzvvqkocphvkji7g7rhbsrngsno7gvsfl4nsfvakj2a@wsfsnohrnscm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gq54nr2bzvvqkocphvkji7g7rhbsrngsno7gvsfl4nsfvakj2a@wsfsnohrnscm>
X-Proofpoint-ORIG-GUID: JmmorMT5po8FmLJrQTAYG5o8Ay-FDmuA
X-Proofpoint-GUID: JmmorMT5po8FmLJrQTAYG5o8Ay-FDmuA
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA3OCBTYWx0ZWRfX0ZqAJGqUdb1B
 ameGr10E0ZtudV6ZElBHLyhpG2JvA0yLe+b9RLEj6DRJFBiYLJWpYwtMWs6L8DukXgOudxDpKDD
 TXyLEjXnzyNpAWyn6sjO9xBfwwc50YI=
X-Authority-Analysis: v=2.4 cv=IqAutr/g c=1 sm=1 tr=0 ts=6a2fac35 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=wlKiXeHTwYhgOVykP0sA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA3OCBTYWx0ZWRfX8FfT1M+EM+Vm
 LFM5YskoT07CvQMrt0tXvWF+95iHMhVi7SV/la4jh7AaLerMAgnTHsfaUKCHwpyBuIegriC+/IW
 3nSn2SX93SlS/ZTtRLJCzGv0hKHql2n1Yg3FCMSzzFtX70j3pIeAPKYKnTkKKRU4/MCcKs0Rxf0
 X1HVYZr5evxTgQ5+nnA+cay959/0pZTM1O8O6WYPvqEzCUIe00gMy3YFWVnuWCuX/uVv+UtMMJe
 43DvfRcwMyYmr9hMqmZ7DtUQDSHKfbZyAuLfmyJ2C1BL16H8aB/NDMAu3so4Z76PIpmKtaWxbE0
 NsOlimm2H2NEnMOewf3/Rj7zhElk+yNEoPUE0nwG48JSKvgL7Nnj2QKkXVe82oGMelAffFRTVGN
 54XmmcE92xuW8UQmY4m0dkwTHVjjWAm+KzT3yaNLAiLiN4caEUXHDeuzPwEEP7BpPmCZJSl9r2a
 1GFxzokuJfkvdFav00g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_003934_931678_28B502AC 
X-CRM114-Status: GOOD (  14.72  )
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

On Thu, Jun 04, 2026 at 04:49:59PM +0300, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 05:50:44PM +0530, Monish Chunara wrote:
> > Add support for SD card on Shikra SoC and enable the required pinctrl
> > configurations.
> > 
> > Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/shikra.dtsi | 93 ++++++++++++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> > 
> > +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
> > +					 <&gcc GCC_SDCC2_APPS_CLK>,
> > +					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> 
> Misaligned

ACK

> 
> > +			clock-names = "iface", "core", "xo";
> 
> One perline

ACK

> 
> > +
> > +			qcom,dll-config = <0x0007442c>;
> > +			qcom,ddr-config = <0x80040868>;
> > +
> > +			iommus = <&apps_smmu 0x0a0 0x0>;
> > +
> > +			interconnects = <&system_noc MASTER_SDCC_2 RPM_ALWAYS_TAG
> > +					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
> 
> Misaligned, make sure that ampersands are at the same column.
> 

ACK, thanks for pointing out.

> > +					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG

Regards,
Monish


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
