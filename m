Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF8ECE77188
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 12:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxdG9fsGsm4skgTCr2OtQwAycr8KBkbXkCFo+T/BS00=; b=ChM3SbGiezZCpZ
	MfQIjbKcT5lsTrZ9LVhq8n4ox6X0ZwZAyEicLIyxiH2ckf2l8R+Je0YLPoSjIbUyPsNKdLQR8HmNG
	RtI2o8aJDPESfsF4D+HWxOZoBCt2x7jes8BXuU6N0YCftAHQS7Rfw7o6Q89WEycqhShhx2S4OP0gD
	1qvEmqLczyCa8y6M5HZXlUEKFYz0ADMQeLNSN7VdoXjTPCdsroNLVVHz9NtxJmocoVTxOGDMJNGv7
	pa91Hatt5lMz5vp3cM3MBe5m8Hk8KyZuwkipC8QiMtO/XIm1C3EgnQ+6wvsgbrJ1tBQNysKT6PtBc
	Zn+dNyiDUnf7303mG9Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTK6y-0000000AKoz-0F0i;
	Thu, 02 Jan 2025 12:15:36 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTK6v-0000000AKoO-0x2z
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 12:15:34 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=QolDcQOB;
	dkim-atps=neutral
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id C7BB8AEA
	for <linux-phy@lists.infradead.org>; Thu,  2 Jan 2025 21:15:28 +0900 (JST)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2166e907b5eso142986295ad.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jan 2025 04:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1735820128; x=1736424928; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VTzFh6mOLAUyFzWnsbUpsLcgbQjPe9ChhHIlcORLX8o=;
        b=QolDcQOBILG1sKVzxAKHra1pf18Lnk1CJ9nQpNlANuJjki3uE40HUJYq/aZUm9c9x8
         x8J6TSgDlxAxz+v5QL+pbxi+znieq1zIb0F1FzFVR4nEZSPe6dMN/i5DW0v5oKu0WoV9
         zo+uS/Q6FNMO62ROL7NUERE+ULDLhGd+TWxLBztL2vUrYTN/oNBB52ETpbxl90S/GK38
         RWC9pbZbZnqUH6+OdC7orH3M/OMnqdUpQ1Ss9yLGtUPySQB1n8XcT4R8XveKYsrVhXnV
         ZhQ34sQdPmvQN20VxbmwCvCFeYWY7IWw9ZHhiF35xo6hWluFLU+XiMFsh2bxyXp+ku2P
         fTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735820128; x=1736424928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTzFh6mOLAUyFzWnsbUpsLcgbQjPe9ChhHIlcORLX8o=;
        b=Xns44KCHoxpjFTCx4ULOFJ0ktLC/qr/QfXbfwTWEJadvhOzGtCRQLoKLZywyvw3+Ck
         5euIEsc7qqtb8pKD1wN5AKWuaAI9WOPIFU6aKQ80ug1ObDZSZFtH6fjR0VDkv5vRTV9O
         KJGAn8V1mnU3uXhH2RUaaaGs654FQ3Gt90MRMgFdaKfD6ngVRrGTLtSDxsnbD79PCQu7
         0IpHFaic9yo6OUzRdA9HTBG1zjrpzT8AE2DJh1IgKM8fVuhZWNHWhDKJ6pgfyxiXScX4
         7MKCIAFwUGVeRfWeZhUmQ85CzWX2Ovfq4Y7cPPgqn9BiYZQCRRCJOhPIMkrnuyPVdp6d
         2Ypg==
X-Forwarded-Encrypted: i=1; AJvYcCWF+ZNfqBrkV5Jr7W2euHPfxEAKhywHel+Ot1Adubs+/oHZSNX+bqn8JsfIAUwObLTACtxNUvpKgAo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+qKV2ojT4bUqT0TAXhWZWNWUKROpUoTxlEA9IhSpaPVlClViA
	2wHm9ojIYPe9uswSebS4sl9eSAH9IiRk2rBTVpLVtYn5Nyd8PTcN06RHKLN79kXghKSenGtR/Ir
	3ZjNJ/3CAMmxjhtunXkEhZol7EjdCK7o1a9xGE3Kyu806E7Ei0epl8du8qH2pxZCv
X-Gm-Gg: ASbGncuZ3iR6NNYGAP/AMTdpWshCjaeNUDkJRMxiqYYWVSMGomgt0pQPSy+YAs3HVmf
	SuhK6PNjsTGg9PLhmAAbvJK0Ya1a3JHGh5RMpp3HbypNbHC/OxDOA+orkR89jH+LSKeXNx+i3bI
	crfX11RS8svleqnPZz9sEZwUEL3g0pIbnUQK1AzyH3M5BmsbFuExJQltpSW0ZwC8x4exU41YaTA
	M/aZY9wN88ZinYMi1wR7k41UzLv/dVMS+FKtG6fs3osq2Xka+ecScSeY07i5+v2pCBl/H9uCMNI
	Vx6r7Sr75w2ifWuaSarzRuxM0+jwL2vc+OjsnemB
X-Received: by 2002:a17:903:2287:b0:216:682f:175 with SMTP id d9443c01a7336-219e6f42c4dmr696066025ad.49.1735820127895;
        Thu, 02 Jan 2025 04:15:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDA3nTKKup+vDsYPR9sNeg0JJRyQkLrOaR8YBNRhc6maeovamqK8tKHJzktnrurwWOp713YA==
X-Received: by 2002:a17:903:2287:b0:216:682f:175 with SMTP id d9443c01a7336-219e6f42c4dmr696065655ad.49.1735820127534;
        Thu, 02 Jan 2025 04:15:27 -0800 (PST)
Received: from localhost (103.131.189.35.bc.googleusercontent.com. [35.189.131.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc96e764sm226324465ad.62.2025.01.02.04.15.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jan 2025 04:15:26 -0800 (PST)
Date: Thu, 2 Jan 2025 21:15:15 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: Pei Xiao <xiaopei01@kylinos.cn>, geert@linux-m68k.org,
	aford@beaconembedded.com, arnd@arndb.de,
	frieder.schrempf@kontron.de, kishon@kernel.org,
	l.stach@pengutronix.de, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de,
	sandor.yu@nxp.com, u.kleine-koenig@baylibre.com, vkoul@kernel.org
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in
 fsl_samsung_hdmi_phy_configure_pll_lock_det
Message-ID: <Z3aDU_dhfgEHlL4u@atmark-techno.com>
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_041533_415215_AE5FBE7B 
X-CRM114-Status: GOOD (  17.50  )
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

Adam Ford wrote on Mon, Dec 30, 2024 at 08:11:16PM -0600:
> > index 5eac70a1e858..3e4d1a5160ea 100644
> > --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > @@ -341,7 +341,7 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
> >                         break;
> >         }
> >
> > -       writeb(FIELD_PREP(REG12_CK_DIV_MASK, div), phy->regs + PHY_REG(12));
> > +       writeb(FIELD_PREP(REG12_CK_DIV_MASK, div == 4 ? div - 1 : div), phy->regs + PHY_REG(12));
> 
> The for-loop above this line states:   for (div = 0; div < 4; div++)
> How could this ever reach 4?  If it did reach 4, the calculation for
> int_pllclk would need to be recalculated since int_pllclk = pclk / (1
> << div);

But... for (div = 0; div < 4; div++) does reach 4, if the break
condition didn't match, which is something the compiler cannot ensure
here.

The old code would just fall out of any of the switch cases and fallback
to div = 1 if pixclk > 297000000, which is likely incorrect, so in that
sense just padding this through `& 3` and pretending it will never
happen is probably acceptable, but this ought to have a better comment
than what Pei just sent.
(this was correct with the old lookup tables, I'm not sure if we can't
compute any higher frequencies now?)

My preference would be to actually check and handle this somehow since I
don't think this part of the code is that performance critical that we
can't afford an extra instruction, e.g. something like that:
if (WARN_ONCE(div == 4, "pixclk %u out of range", pclk))
	(appropriate fallback or return?)

but I haven't spent the time to actually check so will leave that up to
you.

Thank you both,
-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
