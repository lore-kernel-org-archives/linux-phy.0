Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372D9C3ABC9
	for <linux-phy@archiver.kernel.org>; Sun, 18 May 2025 07:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTbQSzSjA0o3cIlv3QoIrZSIcTo3W/l8wwHV+SE06gY=; b=ZGBJx3h9/Zhtpa
	/WSLSkWYVTHxpy5RsiRrFg/WOm3tCk6mrgqSqVqPL8mt7zO6Vr7q8zKW5PpO1SmAO5p3BRrSU2x4I
	FXebm2ymeJ4j6V4x5/pIFK4cZaXq+PZa1dRoR6JXS3/aywmAeYZA44TVZf/Ll+XcEl1/n2pmftdSy
	ee5+HMALG7k1b2O15O1i3l8RcEudK/aQzzJhkUQ8QQCi8stweqCXA0QfUQDb2+JgGImD6mPxLO7OV
	OLwp/Lv4dNTCTAQ9oH5GmIH62rxF5QES46eeI8wBjzDiLoC2b6QnV/GaHZc1VbZLJavqaPQ7jRnRO
	QbXsOF8nydq+AJfsYyEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGYcQ-00000006r3q-3NDh;
	Sun, 18 May 2025 07:39:34 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGYcN-00000006r3K-33eu
	for linux-phy@lists.infradead.org;
	Sun, 18 May 2025 07:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747553965; x=1748158765;
	i=markus.stockhausen@gmx.de;
	bh=F6yrJTxLlcIU1WO3V8cduaSxxiiuQ08G0J5ikUmAzQo=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=W/g2vb/j8lf4ve1T+egNOP0oDa+8BYF9ISwdP7H5NkuGOM5wR/ER9Kj1ztxe/IUz
	 bGcdHVgMbBnCigURF3yF7YIj3IjbIwdwM2J+ZxmT8b4pAcgstfxy9ayjCRYnqCD5T
	 SuQLGMWD4kmxqxhUsk17gst5rOeM12vPoCX5yw7bQn6GJUzc6pBAQZJq7dYXCN6mq
	 JUieE33pMqA8jxKl5xAWUK7BCE6uQ/U0oGGmwhrf3dfH26O67mMNIP6uiTgQYMPMd
	 oE0k9G4WNJk306R8dkw1T/4KYt6tP55jl7HMqTE55VU+UJ0u5povv8Sizg314EjrZ
	 XPNOWS43l2EBzkRfVw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.55]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAfYm-1u5aFR2F44-000EiV; Sun, 18
 May 2025 09:39:25 +0200
From: <markus.stockhausen@gmx.de>
To: "'Vinod Koul'" <vkoul@kernel.org>
Cc: <linux-phy@lists.infradead.org>
References: <20250417124741.2405981-1-markus.stockhausen@gmx.de> <06ad01dbc688$ee2a40c0$ca7ec240$@gmx.de> <aCi24yjrEatKxiZW@vaman>
In-Reply-To: <aCi24yjrEatKxiZW@vaman>
Subject: AW: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
Date: Sun, 18 May 2025 09:39:25 +0200
Message-ID: <0acc01dbc7c7$faa68d00$eff3a700$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHBQkHCtLzM7kSYhx7haRg7W8ZOSgJ8QPYRAkfTdoOz5uk9EA==
Content-Language: de
X-Provags-ID: V03:K1:zuNogioIvSsZQYjBMaGw8B8I60Ic9BWB4gHqLgHSVfWhTV7eVms
 H4xc0wKU695g+Uft3t3hDbbp3GKnDjy2VTclzGGh1qJ1QykjLLHnz2FRR1AzSZaqVPu2lis
 361xlNaubG6E/O9zOZ7Cw58TjAwan7tJTGV6tR2NtBg27wI+mpnn4fFp4BMUpL0tH89IrNf
 VW3FUwwpo0aWTDVMrdJtw==
UI-OutboundReport: notjunk:1;M01:P0:zWCAIh9xLLQ=;rsR2wjUry3/8Rzcn2UWA6NYdm/C
 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_003932_069072_D429196C 
X-CRM114-Status: GOOD (  15.58  )
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

Hi Vinod,

> > > This patch series adds support for the SerDes in the Realtek Otto
platform.
> > > These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series 
> > > with MIPS cores. The ports are based on 1-8 port PHYs (e.g. 
> > > RTL8218D) that are connected via multiple SerDes.
> > 
> > Just a short reminder to get feedback on this series.
> > 
> I see only cover letter and no patches following this. I think some issue
with 
> posting and patches are disjoint.
>
> Can you please post the series as one series i.e., make sure patch 1 has
in reply
> set to cover and patch 2 to patch1 Typically, git send-email on <patches>
would 
> take care of that... Or use b4 tooling

You are right. I used 3x git send-mail the last time. That messed up the
reply-to. 
Sorry for the inconvenience. Hopefully the resend from a minute ago is fine
for 
you now.

Best regards.

Markus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
