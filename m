Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCEFC3600C
	for <linux-phy@archiver.kernel.org>; Tue,  8 Apr 2025 06:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzflj3z43ZLyIlWvDT6oyjLeoVxl/DhQThFWTXr87Nk=; b=Lo1zHEBaqB2dox
	ImuLa78LcYekgTgpvwqI5KoNfgN0XIYhFT70j8WuRau4i8eT63/RZoZDZxPy3rOV9czMVaP+NXktS
	iD6EdKdqGEjMmXe1PPCTiT00REOM8h68n19EwdkwZObMBgTeq+UJGfOjdqjAJIsg0btK6/MgAxPhI
	Q7RBn0+R/D3EILXkkx0iSOxoJksuCL8fxcFuJl3M5S8hMgTEaoPAmHFPwdj9J7AaMx6CD524Cklj5
	luEneFY+nt5/vmRMzjn4nctVIPwotuabzCmD5e3+FUl/EUkHV/FfQxSIlv91j261MIQJqM7Qf1WvA
	TwLtBuTvOJCWJzDt9pRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22IO-00000002tFN-06sT;
	Tue, 08 Apr 2025 06:18:52 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22IA-00000002tDO-0AaC
	for linux-phy@lists.infradead.org;
	Tue, 08 Apr 2025 06:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744093097; x=1744697897;
	i=markus.stockhausen@gmx.de;
	bh=Vdy3R5LBFRPswZsgGftARRLMlVG4M6OL5XY4NmQOOQ0=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=j5Vdvc36t4MLDd6kwGsDIzxL8FEEFFJh7vg1u3t4TXymVn6bncEbEakltTKKsgqf
	 DjgcAtLHkJ58uw83l1OKAWgnaPTi8LWwAl4GoWvnUm5Y+mQCTsQmlUrtyJRHkHIQ1
	 SNAy9IGR9wgLcTL8mw8hcbY8Tz/vjnzNIgazVSIfuYfuenSTUe3w/IT26FGfpnG90
	 CdyENkINNjusmsaegYmp0rvwLhK7y1j/t061AydyW+wEc/kGgX+6YR87+QHxduYsJ
	 rOX4iAvuWAk9OOz3ZXlhAtqXUw2gj+M151L8/qfW3FxfQIjzs/eqUT/W9T8DUrUuQ
	 ALkq27h8T30XhL2Bkw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.55]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MxUs7-1t9Dc033Bx-014ko3; Tue, 08
 Apr 2025 08:18:17 +0200
From: <markus.stockhausen@gmx.de>
To: "'Vinod Koul'" <vkoul@kernel.org>
Cc: <kishon@kernel.org>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>,
	<chris.packham@alliedtelesis.co.nz>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de> <20241017162400.3881609-3-markus.stockhausen@gmx.de> <Z1XLheRVQYu43hI+@vaman>
In-Reply-To: <Z1XLheRVQYu43hI+@vaman>
Subject: AW: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
Date: Tue, 8 Apr 2025 08:18:16 +0200
Message-ID: <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHuQ/ENXHiu4RPVNXA9/zCVGi8qxwDL0dQ7ASW79VGzZIaesA==
Content-Language: de
X-Provags-ID: V03:K1:mVkXhrRhj698K+E1SZ3JAiIiVqk0zP+Wora74Jn+2oySCajbSx9
 DG/ksNhquPhUaSxGYvGGosRtr/MfgEfmM5vFaVNCKX/vCrdMNgw78zsMnn0SeZ+mSy4aP+Y
 cCUBM86EItQfR7W1OuErG0aBriAmB6mfcVg11Vs4VJR7LCylb/FBUhjS2nG5Ot+/WU3O/ff
 I+7odBOIPrNF0yPc0K6Bg==
UI-OutboundReport: notjunk:1;M01:P0:o928rvRmvpo=;zYthLJ1CPmqyesOrnbtj5oFdfbr
 PHEZCIJ9htSHY6BNW9k2uPtzgRvNvrjZ8tZglbN3JCIHt3d5N4NR8MoeQusp3aDnq/R15eg4n
 2j4JaHPEkdlUkZovJYWzvZandZNEFxnG2Pt1IRnHVMhfVqCzfcp8et99BPEWagxb2yjQWORpi
 F9rj5YglG3+pyI5T1Ulb9PYJ/MykhlXLz3V409lQqny5Tf8DVN+QRcPF7hdARnOVg2jAVO5am
 oeceIOB2J8yrmYF15jTvi9OMOjehOGhB8feM9gnVIGDYiUMOxbB085NzBglLnjior/v+dIiMz
 09qn5ROndUFdAQax3cIYlYHjl6W/eH13pjbc+Mnop1Ds2RGYeEhJeeFIWWBQrZGsh8tUG4gxL
 mwx0xonPxtJflj3QXgqrZQN6vPWWo2RkWgcNHqqtUw8Hcy7L9yeRxqqrY09XrgDWFYZzd/tOD
 Bgqu442yIaX6GgcXCK0CyYWuGPU65pZZhsdH0cK9vwRjltftNKP2C2gnGkkm+0F3sT8BhyByj
 x48LWfgbVgHNK0xmImAwnFMbUg8gty0EDRMNAXzDeLdpKsOLRIreoulMXJWkBE+ofp14T/uqU
 +m7GWIZScwn9EPefU7nYOv0bWOCfzVspqxp9/ye7M/wI/MUEj/LO2ePdeKf2wJxsr3EZnljMm
 6HXb+j29TjY1Ilv/FElB5ayoWXnWeqQxkVwDoqR8QoKvOT/tkdFbYZ0MSTIf+JbCmtkPVisXb
 0cLeCOJ67pxiAa6neLW8mfLEf6WJP9Futhhj1iaeFxHCnL9qmItjG0yJG6v1ffcl+0GKEdrn0
 rC2j25aP1m1oz/6FOCfXqYQflIEnVcrWRMvGPHCo+WPOnnBvWdtf3EBntqc6ywk7JZI9moOCS
 0Ip/ePUaXJUz9zKRF2sn82umgFH6VboUVmP2VLKgKKzCFNrFQMtBecLsKgwV1zklirdAcWMAd
 WKs+6CarPo1WyyYEIuSybfq5AaCOVl0pCdQBkUt2lL+Rx7ZxQXZqPcJyL1Xxuu0ztuEGoZMKZ
 c12Ub9hbA4/3J1dq4fzUZLwcGM6ETH/Wd9ftSHpIir+Xx9rP1aqRXqqu+WCzDCRyMptpPe+xO
 UjKXcir+IdAcyp/gaUGfPFrQ5XMaI47rMEsCaaBMvT/WChcseb51sG6EFB3fpDeVtGNEeW23S
 8HyIkiDT8cCTd3t4IQvCQasfPEv4kT+CoUbV4OaTRIG7KgjLGXbgWoSdJWPMz1c/CMrRrwZ4K
 6uzjBRo7yqpo7omm3sslIqEuT/IudiCDkg7SRObYS4dk1/FwWEODha+UNLenEYwN9gFMT1DiV
 eAVBu8RCY2ppt1qzztkCcFRpgJd/Fmd/hN0YVDaMrTcm1EAMfw0DL/+aVqviqQE8IPlR3F013
 TWuFS2fPQMjwb9sRW9s0AfoJ7YXh9ZqVcBty40v4dKgN9DekqUwzgk58+0XawRPVR9U/dK+hp
 Bw7mtLfNFofujGmfITYF+/cuPixiQ1Ehgfdjl1mNfELycYJbh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_231838_370940_A262568B 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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

> Von: Vinod Koul <vkoul@kernel.org>
> Gesendet: Sonntag, 8. Dezember 2024 17:38
> An: Markus Stockhausen <markus.stockhausen@gmx.de>
> Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
conor+dt@kernel.org; linux-phy@lists.infradead.org;
devicetree@vger.kernel.org; chris.packham@alliedtelesis.co.nz
> Betreff: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
>
> On 17-10-24, 12:24, Markus Stockhausen wrote:
> > The Realtek Otto platform is a series of 4 different MIPS32 based
> > network switch SoCs. They consist of:
> >
> > ....
> > +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> > +
> > +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid) {
> > +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> > +
> > +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_reset_fops);
> > +
> > +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_polarity_fops);
> > +
> > +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_registers_fops); }
>
> Please create a driver directory and add files to that please

Sorry for the late response as I have been busy otherwise. I will take care
about the things you noted. Regarding this advise: Do you want me to create
a separate directory in the debugfs or for the driver source code?

Markus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
