Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2349C5AE59
	for <linux-phy@archiver.kernel.org>; Thu,  5 Jun 2025 05:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z50TFTt7cubnXygvAP8o65H+H2ucatRS2xFD+STg49I=; b=ISa/xn5r7dCRAi
	pz0bw3rrGtQe/PtdOrsvLDXX8DyPcb+YdoAfsyAUoFMCPs31wuNqtoBHkvdjpPH235QJQOTRfZeJn
	t1kwNMh2rklnWFBkU9HcgKcw1xes4n3OQNwArxKSksX97/IyyrCPT00T4CHxaZaYxdSeDUph73K7B
	WfWT+KrNNvdD3Ds4Qb0qV7xoaxhf78HBXk46R88IBVxeFwzOhGzfNM+2m7aYn3FwiDaJ+rX5sQCdp
	s5h3Z61e7T0ESkT9MTjIBy1HmaIz5pAsWUqcTKrsb0z3uKJLShpOOC5QCx7Lb3+qzDa/ANPPgFJX8
	a99U/sm7yI3l2wnDfo0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN363-0000000Ekni-15Up;
	Thu, 05 Jun 2025 05:24:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN360-0000000Ekmx-0BwB
	for linux-phy@lists.infradead.org;
	Thu, 05 Jun 2025 05:24:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554FA1AZ000698
	for <linux-phy@lists.infradead.org>; Thu, 5 Jun 2025 05:24:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1a9JgcopP9bJ5yF1Me7vfccR
	Le+8BXkEbBw51pVceW8=; b=RTox0ObqdSLNR5F8asiRpPLHATO4WAFotd9IbWWM
	/Lcf2ZR2kFLHkaKRMdSv2q4ftBQC/CjKMEuuv0HoB4nudfoFyp1Kf+sPRaVvor4O
	2lwZer5akc+gE7QGMyK2fsmh/IySUhT8GaU9GOfyx5/bUgM189yuu+pD/IT3FXl4
	3R0/SQD1nCAptg5c2MgX+7ssKO5eZCgmASLqFVS0VyXpXiVRoHGSUlqZvB5w7Gp+
	i7alpuLT9V0xPdSY5KS8vdAFMtpSJbzfPOkStceSW2aNv/Xz2/H94/Nb2AJSmRPz
	n6Ju7powBABYrI/9whDi5XTkm9ndIeOc6lwlXR0pumhPzg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q8717-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Jun 2025 05:24:53 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-747dd44048cso572714b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 22:24:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749101092; x=1749705892;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1a9JgcopP9bJ5yF1Me7vfccRLe+8BXkEbBw51pVceW8=;
        b=OnBrz3Dwk2JMMqV+NJcWyrdYhvjNe1Z2OaJGxNEPd0xQk3r16xeYi9A/scHtgPjRSP
         UOHQfst8O0GzhUWrXFq2FTPHgFg4J/QwqdPT8FG7eSBVj7UoaLSAar4Y+DpcGNGdN28k
         sU3i+Ig8M9XNjzuGtpXoIjW1qAnMFxkMG0NGk+gJADCaSCkFyHx5xiFhLnMWsQ704Iyl
         KfkIPKRvboFiH7wPbQnDd6rMckKzvrEdry3bR8P/PiRLQW78cFFFwUyVfMWNSafDL0C5
         l3j1o0ggYZcOoVGg0+vgpI4eMNkVXMFeAcajSaSzFTGQn93UJxaNomBSyx5LvvP6ev3g
         M9Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUx4cfx8d8ml112pX9AmFgYYUuO4AqlGngt1e4QfwEWTmar4O2a12GFiDWvHlmtWklDol9IDrB/54U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6bg+oK3TPPDlqdNQnocoqakiPUqn6sBLGUYh0S9SideL9Zgx5
	alwfwVtiyTJBjTu9ps4vNL4fF2OgM+lxe2WZ5EBC4rxfjvKa3vyI9ntYY1KuMrvIKmdP1XgfkoT
	l1IpOoTf9nkfWw7TzHteCv2HzOx0J4EevUQpaGBSOiMw+ekzap5U7AqoeR12nkmqWlBWd
X-Gm-Gg: ASbGncuUlxNBufo4JOcKNU9e84QdAe3UYiJw+6x8EiWz1FoAZ1QAUAWDh4L9CJMpkuW
	rWVcJKn5WmWXELMrNrFg4iCVqCZjHkABgNOfmFRNpPjPRqsbLgZZqTCFEkzKRnPCAtiWZPyYf/L
	twhnwCg318dY3UDoG+MSdBaVSPLicvxxRoas4QPickG9eFd06LJwZr2qe7Bj9rH/evesV2CR1EL
	euyzwi5bw87ki2bKH2jo1ouk2rxP/HoaY1sVoHDMOfRmEntiAElNsY3k02spxHLJ70LP6Krs5tX
	rvqou0F2oU/k2F4bttPqGlhEi0f2CUTYI9l9CW0ydqd0YTXG89yJePUBNZE=
X-Received: by 2002:a05:6a21:3287:b0:1f5:9098:e42e with SMTP id adf61e73a8af0-21d22a6cab8mr8581877637.7.1749101092396;
        Wed, 04 Jun 2025 22:24:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELuWY/1bcdQXTlNAC0FeBkJQ7D653GZ5CNEp7sdXfBrnquNDS8cgkO69w0uf0qsyvNLiEZIg==
X-Received: by 2002:a05:6a21:3287:b0:1f5:9098:e42e with SMTP id adf61e73a8af0-21d22a6cab8mr8581844637.7.1749101091990;
        Wed, 04 Jun 2025 22:24:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe96781sm12040801b3a.29.2025.06.04.22.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 22:24:51 -0700 (PDT)
Date: Wed, 4 Jun 2025 22:24:49 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com
Subject: Re: [PATCH v4 1/5] arm64: Kconfig: enable PCI Power Control Slot
 driver for QCOM
Message-ID: <aEEqIWSU5P9Xp9J/@hu-qianyu-lv.qualcomm.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-2-quic_wenbyao@quicinc.com>
 <46r6cdcugwvyuvkjqbi3tq4f7ddkrgy4jut5fwqjsfwbsfoke4@upmtzhcmc7ni>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46r6cdcugwvyuvkjqbi3tq4f7ddkrgy4jut5fwqjsfwbsfoke4@upmtzhcmc7ni>
X-Proofpoint-GUID: 4qG_SI2xZIyxKFD-MM0c9Yi4EUfxq5BS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDA0NSBTYWx0ZWRfX42pF9M42Gy3O
 1cjsjUgYX1j/QaJmlUOmqeZKV7uytYCAnaH2LTx9BhgcLZNe05ow8EuF1hVXDtdDzi6qdFy291z
 ZliXPHqF+6tfdLd6y1+yTWxHiGkJDAz9i080uLmn4BlYUtP89MjC0pyyxn2+oeBBN8oHdMdM253
 YxFdEXkKnnkZlVlYpKIyItFR9OcFq0FojEXrG8wT+FEdVDvprvM+s/Mx3UQuN7qGoQ4SegsUsMP
 0KP4tXwsql92NkjDTWCBUm0Cm+a+rmNP7Urnh6zzD315HO2H62pkQxTnPoehO3lhdnHoZYvIKdQ
 D3FItZknTw2HUmeyQ0GWoWr4RXbRl1GS5R8x5Pod7e6RPYME1m/QJuDKtstS0APTXxMIFF9nt27
 odhiyUgDs7bHZZscqxb2W9DhdK/F54Sf0KuBS6Zkjv3/fFsLKhbFzcOTjK+D9hNzzYIVzL0j
X-Proofpoint-ORIG-GUID: 4qG_SI2xZIyxKFD-MM0c9Yi4EUfxq5BS
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=68412a25 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=yafonziSkLk5LdqN7hYA:9 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1011 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506050045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_222456_287303_BCB2D518 
X-CRM114-Status: GOOD (  25.92  )
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

On Wed, Jun 04, 2025 at 03:30:22PM -0500, Bjorn Andersson wrote:
> On Wed, Jun 04, 2025 at 04:02:33PM +0800, Wenbin Yao wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > Enable the pwrctrl driver, which is utilized to manage the power supplies
> > of the devices connected to the PCI slots. This ensures that the voltage
> > rails of the standard PCI slots on some platforms eg. X1E80100-QCP can be
> > correctly turned on/off if they are described under PCIe port device tree
> > node.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > ---
> >  arch/arm64/Kconfig.platforms | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> > index a541bb029..0ffd65e36 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -270,6 +270,7 @@ config ARCH_QCOM
> >  	select GPIOLIB
> >  	select PINCTRL
> >  	select HAVE_PWRCTRL if PCI
> > +	select PCI_PWRCTRL_SLOT if PCI
> 
> PWRCTL isn't a fundamental feature of ARCH_QCOM, so why do we select it
> here?
> 
We were asked to select it in the same way as PCI_PWRCTL_PWRSEQ, following
an approach like:

select PCI_PWRCTL_SLOT if ARCH_QCOM in Kconfig and nothing in defconfig.

But to be honest, we didn't figure out a more appropriate way. Unlike
PCI_PWRCTL_PWRSEQ, which is selected by ath11k/ath12k, PCI_PWRCTL_SLOT
doesn't have a specific endpoint device driver to select it. Would it be
appropriate to add "select PCI_PWRCTL_SLOT if HAVE_PWRCTL" in the Kconfig
for portdrv? Do you have any recommendations?

> Regards,
> Bjorn
> 
> >  	help
> >  	  This enables support for the ARMv8 based Qualcomm chipsets.
> >  
> > -- 
> > 2.34.1
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
