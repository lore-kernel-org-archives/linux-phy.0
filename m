Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B48BFE77179
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 10:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/drE+SOysowtGDLvpdB1JK4RPVR3kvmfFgazF4Oj13o=; b=EMaKqxcY/F6PB7
	Ustj/28x8J6oddPlVtaij92JNqloAc4FzZnUojVEYDyoXfxObn6c0aBL+6OSRdFAbGANLS5uhXQ2Z
	b0xIy2+Pr6yMIP1J9m/1ae4SB7QBih5x+goF0xYWjOecS9t8unQy3B/BT38Mc+8hTnjlF+nCwBM6l
	wLa8gVR3W0bBEJ8nUkhAvX9wgiMJQuePccNTI6auuBJ4d9HkHNIcO6a9GHTa161pbTV5GA4wBKhX4
	eA2/k7tNa7xfWlq3/BO+cUbhUw2nsbtYBkl1oGb2cIdCk8vheTIVSGA/Sv4pEZaTCJpU3Hv6lc/6I
	yw3Xzkt+YKDJD6GxX7QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVwz-00000001N7u-1qcT;
	Fri, 06 Dec 2024 10:52:45 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVvv-00000001Mkb-1Abf;
	Fri, 06 Dec 2024 10:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1733482299; x=1765018299;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=F1K6BotclyzmRObSFZIO2A0hKib3MOWsiz+TlXGAmxc=;
  b=HFBUGwNy0VxacCvAJViRLdfvV6vRGWgauK41uSzab5leji2bsdxBOk5J
   qKK2vn3V73yyouhNa3t6ZPb9NsiUr4QOqyYZZ4GU8SAxNkEuRme4Cbbhn
   tF96PZ+su/MbauICHzTeEG50unC/n2a9XMD/fXmaQixEA4292yV35/Woj
   1hIhXtanpE4gVJjph9H3eN5N3zZHzsWmHam6zdjn0wbJO/gj2VORCUjFr
   h3+n+MMx7i8aKsCLsKqf83jutDi4vSpVaFSP0mGhBmsCfu5G0okC+qCtm
   nPqpKOS3JNFv3N2xDt27u17XZBjd5tXlQeLURUURjbzzcHApAKOMHg4R6
   g==;
X-CSE-ConnectionGUID: Nr4ED2PbSn2oGJ8BLG7i9A==
X-CSE-MsgGUID: tUYxYd5BQ4WlWKKikxkI2w==
X-IronPort-AV: E=Sophos;i="6.12,213,1728943200"; 
   d="scan'208";a="40452975"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 06 Dec 2024 11:51:37 +0100
X-CheckPoint: {6752D739-7-90CD5875-E0265C0B}
X-MAIL-CPID: 972FC9E7E870117C395C4F65784787D5_3
X-Control-Analysis: str=0001.0A682F1F.6752D739.005D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 71066164926;
	Fri,  6 Dec 2024 11:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1733482292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F1K6BotclyzmRObSFZIO2A0hKib3MOWsiz+TlXGAmxc=;
	b=LO/xgI7DGn6iDyh5XslOY4AvGoNhHbAMnoOaa7knn6D4ugQoHDBwQHgT/9qPt9r4BEzYV9
	uYM63IazZYWFilFq7/prjw0AXnf7nuWWjdC14Dua5oGfHE2WNB9UC7GcnhqgSf9XXVkj6u
	6bleNTrQ7erBJ6ntD7wvBvse7c4TMqflMhqNfr1MbQRHPnek7p9MQ3XJaSJzD6sY1/fpMW
	r3UinKv+dMXCbpIhSO2s78edpRf+eWPWK0Q6sEuoSdEX2zu0eBcoL7U1tM28FE7FZdHAVO
	zRA+oty+H76aFZTULGw1xRziNCkFWpJd+7E21LaLRSQTDQQqhsxkV1utLdUNUw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, jun.li@nxp.com, Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: imx8mq-usb: correct reference to usb-switch.yaml
Date: Fri, 06 Dec 2024 11:51:31 +0100
Message-ID: <3326164.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241119105017.917833-1-xu.yang_2@nxp.com>
References: <20241119105017.917833-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_025139_808278_0F1F49E4 
X-CRM114-Status: UNSURE (   6.30  )
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

Am Dienstag, 19. November 2024, 11:50:17 CET schrieb Xu Yang:
> The i.MX95 usb-phy can work with or without orientation-switch. With
> current setting, if usb-phy works without orientation-switch, the
> dt-schema check will show below error:
> =

> phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
>         'port' is a required property
>         'ports' is a required property
>         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb=
-phy.yaml#
> =

> This will correct the behavior of referring to usb-switch.yaml.
> =

> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>

-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
