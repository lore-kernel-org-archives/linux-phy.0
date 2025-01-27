Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED905C0218A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 14:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucd4q4Nt1zeZMiuEyl58LeViWzMjkx7M/ZI85zHmjaY=; b=hotk+zXLNyXKkj
	XEnbKDSwBm3AJ6S9spcCfb2DLZpheK6nwPN72GSy2AH5yoE19/+PPsupO8Sb6odJvrl/JyMRQvzUc
	CfsUi53tWcgZmyHrVOoSLbtcIT2Ohsajo3jcVsUq7e5sHVPeiPwn3oNWo3PFkWdOPBm/gTgMoRgD0
	oBGxaRUY1Q8CDvuCC6N2JVJAt5hbl7pp4md2MUXmO+LkAPwncbwyj9eppWrYLm2jICBBLjZjj/hQ2
	B6SPU1sQ0yWNabJtI2qWuTBQpZVUotzxRLkHpn/P9Zvq47d+5SgfFFv+nZ259lPRBtODX7h2TVMTf
	dwolemvwO3uW3YR2QGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQ2n-00000002UlE-3kHF;
	Mon, 27 Jan 2025 14:24:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQ2l-00000002Uki-1Zfc
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 14:24:52 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-543cc81ddebso3149221e87.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 06:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737987889; x=1738592689; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aDxxOWu3fI3iDcdEKWaJuUs9DgyAIUQG7oziGiW6Sn8=;
        b=f0Skz8jBmsRmfl8hBf46b5EouNQkA7jvMzt/eiRYYJws3GhVyHZdfE/jThRE1x2WRg
         UmklyZDLpTfH1FWnNO0ken79G33SYgVGxC/suENvO1ScHUHDVFvxhXVLb9TUSijZ/wgK
         tMLvAE6hYouhezZfHpOmDv/A9MHK3mRpJthe4IRFVuJbxQteaAifcGDfVQRsxpwsePWN
         GqL42sV0qvKVA693ZZwPZhXb+L2+nEfg/vlKzhdq5Gh6ZZJ8mmQdzy4R842RObRzuPvN
         ouFa7vkjv2+7vTpqlyXbIQRk2RR8tvbUdfpFLdu1ipaVKcat4L2P2ogg8HmwvaNoIV2S
         LZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737987889; x=1738592689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDxxOWu3fI3iDcdEKWaJuUs9DgyAIUQG7oziGiW6Sn8=;
        b=gP1yOmTmkrQD/0Ycfu3vRsDfXPH17YTWXnT9WyW10aom3Dz4ydkWq2zqxIxdupfWRt
         aUwF/8+sCuQBjaYQ5XZwlx/P5NGQDu7aEaNF7qDtIu0VxxsO87DznoPd/Crkdk5+aZjQ
         6z/Mr0pQ9ykv7Z0pyPYzK8421h4Ku/cavAb9OKed86GXk90OmxMGXacOD9hcetELyc1D
         B2AerGCbYDNAbBo9xH5bDVzZ8NvrjMcJDtvk9yucdX7v9qbNxSy5jGMvfama4azLOTxS
         JwF7iTRgYG1gzWJXek0nN0FdHcNzkNStUh5gs/WGYtxEVJYqcHpixmFGF6a097CxYPub
         C2ug==
X-Forwarded-Encrypted: i=1; AJvYcCU3rP1dhdGHNDczS0rropTPBt4/ebaMFktaJMWwG/bhXc+EEgj1OeXo1zaFG4dG2Z2FNbyuOgfFGPI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKMLL6NwTcRvrBfQnWWWe07pOKJbnX8jOI+RW7Wq3dTf8lXwKt
	DveFo20MemQTYVCJFexz4raHeHYHayBPKy0lEN3lHKwcRZ2enfioWU99SsaF01r4EhP1Eni9wi/
	zkv4=
X-Gm-Gg: ASbGncthakGn1/2Deraz4OTT0f3JMrvKGAQp1Z/ye6a0n/Np5wCKyU9RkR23EDMSybj
	VL/w0d5LkjrMyTWJ9hVqL5qwXC28kWv63w/MStZbrQlbBGxsmTnXsO4CghdAwA0XdqjaRFFoRul
	V3DWOy0tz/EFokhqnhxcQ/pQxRQOmL8GCbTFlQekXI32dl+h08YQRoxLoq8Fx2+p5APdprij++F
	9skVmACQXzzJUjujsGwsoBSKrCot/38MBSvWwUGA7ip517575S0Hg9Ds4s8OyXAGBzoYcIcKEAi
	YUcqmnK10890icOt/2q3tTUgz2GyN718nkSlTBo177F4S3tQRhLK4X9XLwvg
X-Google-Smtp-Source: AGHT+IESqlrJFUd8o4WG3EsJg0NRnzgOO2V6+BjsGL/z8+RmKae0D4aialVzIoEWPr5okG7c9idrFA==
X-Received: by 2002:a05:6512:b81:b0:542:29ec:d5be with SMTP id 2adb3069b0e04-5439c21f256mr14299786e87.10.1737987889271;
        Mon, 27 Jan 2025 06:24:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c822935csm1308558e87.3.2025.01.27.06.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 06:24:47 -0800 (PST)
Date: Mon, 27 Jan 2025 16:24:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <vranblkrzxcb33pyjqw5nwvef7fepx32r6wilobrmfyjlt5uic@udhfkej5u6zp>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
 <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
 <20250126163222.nhcxvr4m2vncwi23@thinkpad>
 <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
 <20250127053412.anbdj6hgwcmkildf@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250127053412.anbdj6hgwcmkildf@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_062451_423600_390D7322 
X-CRM114-Status: GOOD (  25.03  )
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

On Mon, Jan 27, 2025 at 11:04:12AM +0530, Manivannan Sadhasivam wrote:
> On Sun, Jan 26, 2025 at 11:43:38PM +0200, Dmitry Baryshkov wrote:
> > On Sun, 26 Jan 2025 at 18:32, Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > >
> > > On Sun, Jan 26, 2025 at 01:39:05PM +0200, Dmitry Baryshkov wrote:
> > > > On Sun, Jan 26, 2025 at 12:59:52PM +0530, Manivannan Sadhasivam wrote:
> > > > >
> > > > >
> > > > > On January 25, 2025 11:00:23 PM GMT+05:30, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> > > > > >On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> > > > > >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > > >>
> > > > > >> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> > > > > >> sequence.
> > > > > >>
> > > > > >> The bootloader configures the hardware once and the OS retains that
> > > > > >> configuration by using the NOCSR reset line (which doesn't drop
> > > > > >> register state on assert) in place of the "full reset" one.
> > > > > >
> > > > > >I know your opinion, but my 2c would still be for not depending on the
> > > > > >bootloader. I think that was the rule for ages for many possible
> > > > > >reasons.
> > > > > >
> > > > >
> > > > > But if Linux or other OS can trust the bootloader, then it makes perfect sense to rely on them. Obviously, the question here is that on which platforms this level of trust should be established. And the answer I got was starting from the compute platforms (atleast X1E).
> > > >
> > > > Is there any way how those values can be lost that we still might want
> > > > to support ? The GDSC going to the OFF state? Some deep sleep state or a
> > > > power collapse? Actual suspend to RAM (instead of current S2Idle)?
> > > >
> > >
> > > As per Konrad's reply to my identical question, PHY register state is supposed
> > > to be maintained by MX domain even during CX PC. This seem to be case on X1E
> > > based platforms (compute).
> > 
> > Is MX on during S2RAM?
> > 
> 
> Qcom says that their current s2idle implementation is equal to S2RAM (when CX PC
> is achieved). In that sense, yes, MX is ON during S2RAM. Do note that, on
> majority of the platforms, MX is the AON (Always ON) domain.


Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
