Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2AACEF162
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 12:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiYfCiv9yuaQZOfxZHg2Z9EubIUshTTFw/3zF0EPnik=; b=Yw7WLz+DgxQ0lO
	aonslz7LeeyeEXkhlxJbuYxJoW/r6NxpJ5wjdlFXZRsrtBQr5HFlu8T+nvCFMni2yH97Ij7vteFS2
	KtvLFIdcmlh8CPN1hTxdw0mOw2kmTI1ZZeINhtF+3Bf0u4iJSPptqWOwDYR/+1SFbMMEQGouEs7Cr
	fmZu6EN2bw9rokmCbTXmCn/o6whhEDsEcJCbe4EL98ig1F/dDomAEnxU82+6q0mZjezSqBk7jNMKQ
	vqnKu3eSUfTDbuOT86/u/TXwiftOeulb9oqQ+51RXbJqpjWEXsfUeuo9ob9sS4/UjMiz9V2H7w/QX
	asuqAhT0gWWNrQ7NceIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy9NE-00000005p1f-4BnT;
	Tue, 08 Oct 2024 12:31:33 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy9JZ-00000005oCu-36A5
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 12:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728390441; x=1728995241;
	i=markus.stockhausen@gmx.de;
	bh=1eE7bBm9hVIVa8mkUL7DOWfcwttFz7lKkwYrwCdnzMU=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OG00GvxxMRfbyT52dFmFWmMiq+aLbkZQDZvxWMqCeXdC8ofze2zSzg6qoDN30OLr
	 FZld8ozgLRePfSKNG3fn5yRSt3ZD4Ul4d97anXQMq/PJW8p2oGpC98Junxftvjtsd
	 pHoRpWwFGfaknuDLCW6VxCSYNctAOzsMdQtrJZYeG47fX9xfVzhg3P8PJxNxmY4pM
	 3aUJLEChmra0WxtWuuF0NuT81/M4u+Opw6zQUqUQYI4btIwI5+g2dmd7KNJzX3kGt
	 ZUPU5Nv/92HvJRebL1XXa2B5YciA4ccBRkcjdHsANt69DU2l6UAg3II/NXhVNGN0W
	 HDM+Bl3N2UiQe0z+SQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N9Mtg-1u1ELt1k9M-010cpd; Tue, 08
 Oct 2024 14:27:21 +0200
From: <markus.stockhausen@gmx.de>
To: "'Rob Herring'" <robh@kernel.org>
Cc: <linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>,
	<krzk@kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <20241007193044.GA2255474-robh@kernel.org>
In-Reply-To: <20241007193044.GA2255474-robh@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 14:27:18 +0200
Message-ID: <001f01db197d$6c842e90$458c8bb0$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8AiR5ApazSXrHYA==
X-Provags-ID: V03:K1:cR82ijsXV3rl3PO4cQlu69T5MLLvQgL62YJdCwh05i5IBTEdXE8
 jt55/NnLgptUVBzq1CWO045G8SHtoRlPRyhNCyNgGrMAhLZpPLYI4Hg0NgNBZ+5LmCWUcHP
 MBjaOW6uGDedX/6OLWcCXoGN554JwE7GYFHEJGtnEWI3w+ca7kON/bjbNtEYSRCl0LwSsCn
 0xmnnhUdF6vsSIbzegtbg==
UI-OutboundReport: notjunk:1;M01:P0:lxAtLcTVHek=;qLacDJsKEGTvwRF+UOXxrnQjhU6
 bAPp1a6N5q+6ptU/oWWVcVPQgBFEzRei/9r7R0O2U2ATlYJkkmhry+4sEvrUMo1Mjq2OPbfGB
 wWmmX3u+4CzjnqJfOf+4C9kSW6ihpvIa+WKmEGe7psEcU8LVzKC/mGdZiC36CTZXhGJ9LFvK/
 6fFJUl4qLQ+StP4Cp4kRsF9r5OM/BxCKkTeHSdYmKkteNtPwOZ9b+JPPb+OuNutOaRc7VZ8nX
 E2a61ptgKh/OqtlaTzfbxiqPomdNbdIon+OSvuggnu6xbj4eaP7oq2jwnzeLWPDA+2YFTA1tL
 JExgD1r6JOMWEY0bkLPIudP8k+NfYnKc2hnb7V1auOB6AxnD8ydytM9S3kGIUDHw4UuFUjeCU
 1nSUxmQ1TUdfG57xlaZmBtbz3tvFf5PkYV5/EwCE+fJi3NLJ4GKR/5Q/I8dakIoWL6trDQoN1
 JX3XiS3BXcQm0+PSH94/UYuOhAadDmepsXstZXwRvF2062A6AJ+0ySlIntMA0wFzdndEpES4V
 KdqxgXK0Y4Ik5WSVWhiPYxyTPu0X1j3j/+CLTvvlgWiPizr+eRuiDHH+3A3gP0DdRkUmjNjgF
 C/YmC9FoLhIYrIq2HzqUjVsidIV6OHLPxiLdnIFaCiaC2fXHTYgDNEP7msbt0OdTlEYMt8faQ
 CezkQSNGZE5jIFNTS/A78ZAfR10CwTbtL6yRvR687dsMrOq88HC+Y6si3SpvOUVVp/i2mZtjZ
 rmahNJhu6Izw1PTF54qaltKPy9+mgwsFauHKFmBGY9HECaDSt9wodMKIKBZfXD4jC8rhuov/m
 fWjnLBrUNBst/JLTHyptrSDw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_052746_094186_2761874F 
X-CRM114-Status: UNSURE (   6.18  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> -----Urspr=FCngliche Nachricht-----
> Von: Rob Herring <robh@kernel.org> =

> Gesendet: Montag, 7. Oktober 2024 21:31
> An: Markus Stockhausen <markus.stockhausen@gmx.de>
> Cc: linux-phy@lists.infradead.org; chris.packham@alliedtelesis.co.nz;
devicetree@vger.kernel.org; krzk@kernel.org
> Betreff: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
binding
> ...
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^serdes@[0-9a-f]+$"
>
> The node name for phy providers is 'phy'.

Hi Rob,

I found different configs in other files. E.g.

- torrent-phy@f0fb500000
- serdes: serdes@e2004010
- serdes_phy: phy@8901000

Do I understand correctly that I should go with "serdes: phy@1b00e780"? =

If yes, adapt the $nodename pattern accordingly or drop it as in most other
files?

Best regards.

Markus


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
