Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0864C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 02:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnOeSFMehmuCIX+j0S6wbakNUwLRPda73rjXydl3zfI=; b=yjbYpwK7rTIzVP
	2ogeJeava3+ZjqCuNgHUNmA/fiGO5RX5cj77aabiHShrQTze+bZuu3qsn0BuGsWPNDmAHl94qOOQ/
	NJAIz0WKkD+s+lJBT41LAk2i/WSymyxmuxc/zrjXsGn4DoJYXBDdUS3RQ4nFZAZI5wQGe3MV2tffT
	GoNlcFd6FmIlGs3f+IIfmZasNwbJDv343splQfW2kq7ADk2kne2Ao5ouze2BoekiTsXUGqzLuVDEt
	//FgJMhNB12kmdG89ofggjcl7r3J9OU9gfiLyzCP2FHLqAJaGqTPzdwedSodhhsY36dKxE8pfGO/p
	uHh6Er6eAsvK6ZiQdCUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi0px-00000003xBh-0kFn;
	Fri, 10 Jul 2026 02:19:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi0pu-00000003xBL-0yRb
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 02:19:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669HXKfZ2518777
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 02:19:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1zdXv9NQmLrQmjmpGUVK8uh4
	ptN22Hc7QiFgP9f/iyM=; b=YRf3QpFSOsnm9mEqyEOC8pJ7obSk4AdFpK02BzTn
	wlvgOuOVoZe9HuC4U1gAd83JyVQMZGUN7Nv6OnOSUwJTnawJiWjTUAXHcVGG1rUi
	/mrXWi1cnHi3ovw8Ihonn9T/cVxQ7iHns92k4Qu3CmykZTPluJkXWny9vLLcmjyA
	8BGS2BqK7/cpxsGogJfp4XRktjDM3vsTbFBl5LAnMOSZHyqjQe/zaROVOkOQlCwo
	5sdgEbjvhFVuo4TiOlr4aXTSfNm6GY7EkAqT/o5+xXbVkSw6pGI+wfLMpBX97zCS
	6763F6V7xim+AwUH4umo4mALnxvWCDuiw7wIDQAtPl+AaQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faekna9am-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 02:19:28 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c9d5a5b63c5so630598a12.1
        for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 19:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783649967; x=1784254767; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1zdXv9NQmLrQmjmpGUVK8uh4ptN22Hc7QiFgP9f/iyM=;
        b=eC/tI5hmGZfIQb+k5PmJnD16u/6RhCHAVM7G9Rqr4SATI8Me8ETFOyLM+W4clOqQrY
         5Dqz2cA6toHiPADur53S/SBE9jtPH/8xzs9vw3LW5GRuAi2AweCZ0IGZFFYVwGuRzdVM
         4Z6IQ9O5GJqgCIY5spkO0m/LHRqpL9KGsUTjIGAtCiuvKzFDTf6rTZ+TaNIu+LeoUiZu
         3H0aZXL6Z9hop2vlMIB0ZQFWoj5JlUx0VjWXfZRm16S7vsmYkEIBiDhBC0znKRwPEaaK
         jTorbj+v0WcHktQTYHbKZEHBHhO/NCiviKym8CYQZk2b4s/n0ujcIPdEW+ZaJKpRhGWe
         2yPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783649967; x=1784254767;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1zdXv9NQmLrQmjmpGUVK8uh4ptN22Hc7QiFgP9f/iyM=;
        b=FpMVp7vazITMcvImQVJNg/hEqJ3blJamVRSCqcwGYcoc13GHavNXOIl5ooOzaDOHLq
         /c/9hMpn2dwbYs81bfcbYWx+pF1bbxokmicHIBg2qGxU8J9I3C2FV2KsEWZXfu3WH1ud
         IIyqrTkwT8DV+rY2GUPiB/f1q3WWrqRN1SwLd66Grf3jGvItzt+eVvTL/XmGxYAvM7nn
         qjQq9arY7Ftzti9F4xvcVTjwpX10qblFV5c96RsVrCLTlJVOplOEvL+ub3uOyt1zwESs
         Jw2bKBGXTyKIIz5VhOzPEZBbFLTfvXNpHg8BDZuP2W771XVFXcclRo44mrUuwHyj40jr
         EiYA==
X-Forwarded-Encrypted: i=1; AHgh+Rod7GIUOds5wCM0O0pn2niI5LywBvJpu+XNRfcpvI0CImJFTP+nnRVuMSWtaSl4W64FSR4ZocRG8RI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgFBCjvaFFlgIKnPhLAUcQJ6lAmRBcZX6Vob0jxIbnJMSuhOxa
	KaB3fA4fCtw/GzXmLWqkzT4lXKgmRJVBd7xOZ8gpTgXt0IXuQ4rPjkLyqC3GKikIhjejSglc0vH
	qLbB2dJH15dSW7dByYdaLfk6fMmbUcSx2C0V+w6CDrDnF719VEtyYKcd2KpC/HiZpni4x
X-Gm-Gg: AfdE7cmN6rGbDtmuLThR59Od0+QLVjit0mfUI5C09+1r8QKN8TjNtufgO7s8gujEncm
	fC6HHMvcamqDBFezAqfA6eUI1gR+jMmbwI3KEl2k5v4DE87VY2yUbQUmN/T/n44aviHaweQdqmR
	Fw1WihML6wOqz02vvvrCdP9ylG/I8iyXACW6dsPsjvZ+j7M59BdH4H119xJcODk5h5HlRdR/Efx
	sAdJ3Or8kDWklqOjI76A6mdD2+Yddb7H0PLvqMLPyje6riNf4gqVvPhO27JlybDp7HZuMuyCngs
	i8xCVvQOMoTWbCwnDuDntwwoeahf0YSeHRFmZyIGJxbyD3W/aN6Je6eapdUyNyon3HpmbV8ec2N
	guFSpn7EFRAwoV++ILonkPvCdr8YmUjK92wmvkTIpoXZbizHCgIUtsgIkNw==
X-Received: by 2002:a05:6a20:cfa8:b0:3bf:b931:b3f4 with SMTP id adf61e73a8af0-3c0bd1588e8mr10223136637.51.1783649967316;
        Thu, 09 Jul 2026 19:19:27 -0700 (PDT)
X-Received: by 2002:a05:6a20:cfa8:b0:3bf:b931:b3f4 with SMTP id adf61e73a8af0-3c0bd1588e8mr10223105637.51.1783649966771;
        Thu, 09 Jul 2026 19:19:26 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311a6115e61sm13596455eec.22.2026.07.09.19.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 19:19:26 -0700 (PDT)
Date: Thu, 9 Jul 2026 19:19:24 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
Message-ID: <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
 <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDAxOSBTYWx0ZWRfX42BFArN10klw
 +s4IeHXwCpIBsZOwUwsbpmB5FUVMa9Bh+Xvo80xBEkmjixyRLIVCAIsF0eaS6BEHYXthE82p2H7
 GTQrIRvoRMoGvV6cAdiQn7nQTv0HVUE=
X-Authority-Analysis: v=2.4 cv=SNlykuvH c=1 sm=1 tr=0 ts=6a5056b0 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=rieQvRA5rQoxJvxsdQgA:9 a=CjuIK1q_8ugA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: EbKgwFl2JeuyZTrogH6moOyJ2HFhNPXK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDAxOSBTYWx0ZWRfX6EzlLUykWrBk
 UuACom/e/+722J211prKMf6lG/MHrWPx38Msua+ffHphLBmiuoTWr51eqydGD+q8cmm4g74nNRG
 kksUzZkDwx2EjNR61FphY1scbmE59hifRDGWvWhUaXKLhIHRbiolZbFvBBEmCSlelSmfgi1x2lq
 JDOGN8QXY49xZPDJH46Scxdu3jC+ZNlz/uGHZrqANXmpnjbUv/6Y0dMmDRqZvdxlJSv9pZYMqEi
 OJ5R5crzGmhzE/+kHR6A+14RMC4SfvPVsRHHgT2mdVjGDpdeiDizYIxmdOMNFKorTOix3SvPWFs
 F+/6RdB24lyZlg5w/9jaSBejrd8tdY9FvN9gr90Og7apqeNhtdAF7VrHMQYeLRzYF9qnOuMdH3l
 wBBXMQ48KgOEz5Ll8UaaCdbC4pmY5kBMGFJrUfoRTfb27bPhlHg1LlOcVgpQDSQcIArjpQoFkky
 k2GMG5Uo1Bd02ngiu2Q==
X-Proofpoint-ORIG-GUID: EbKgwFl2JeuyZTrogH6moOyJ2HFhNPXK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_04,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_191930_392709_3189BD14 
X-CRM114-Status: GOOD (  26.58  )
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

On Mon, Jun 29, 2026 at 11:20:07AM +0200, Konrad Dybcio wrote:
> On 6/29/26 7:05 AM, Qiang Yu wrote:
> > On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
> >> On 5/19/26 7:47 AM, Qiang Yu wrote:
> >>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
> >>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
> >>> nodes.
> >>>
> >>> Update the DTS wiring to:
> >>> - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
> >>> - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
> >>>   &pcie3_phy using two-cell PHY arguments
> >>> - configure the shared PHY node with link-mode and dual pipe outputs
> >>>
> >>> Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
> >>>
> >>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +		pcie3a: pci@1c10000 {
> >>> +			device_type = "pci";
> >>> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> >>> +			reg = <0x0 0x01c10000 0x0 0x3000>,
> >>> +			      <0x0 0x70000000 0x0 0xf20>,
> >>> +			      <0x0 0x70000f40 0x0 0xa8>,
> >>> +			      <0x0 0x70001000 0x0 0x4000>,
> >>> +			      <0x0 0x70100000 0x0 0x100000>,
> >>> +			      <0x0 0x01c13000 0x0 0x1000>;
> >>> +			reg-names = "parf",
> >>> +				    "dbi",
> >>> +				    "elbi",
> >>> +				    "atu",
> >>> +				    "config",
> >>> +				    "mhi";
> >>> +			#address-cells = <3>;
> >>> +			#size-cells = <2>;
> >>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
> >>> +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
> >>> +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
> >>> +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
> >>> +
> >>> +			bus-range = <0 0xff>;
> >>> +
> >>> +			dma-coherent;
> >>> +
> >>> +			linux,pci-domain = <3>;
> >>> +			num-lanes = <8>;
> >>
> >> Is it fine to keep num-lanes 8 here even for configurations with
> >> bifurcated PHY?
> >>
> >> I would assume so, given essentially this is a x8 host, whose 4
> >> lanes may simply be effectively NC 
> >>
> > Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
> > never enabled at the same time. When PCIe3a is exposed, it is always in an
> > x8 slot. But if we have a x4+x4 platform in future, we can simply override
> > num-lanes to 4 in the board.dts.
> 
> My question is whether that will be necessary - if yes, sure, we
> can do it, but if not, we can conclude on this early and not have
> to fight over it in a couple months
>
I think we do need to override it in that case. If both PCIe3a and PCIe3b
are enabled in x4+x4 mode but PCIe3a keeps num-lanes = <8>, userspace
will see an 8-lane slot. If an x8-capable EP is connected to that slot,
both ends will advertise x8 support, but the link is up at x4. That looks
like a genuine bug from the user's point of view.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
