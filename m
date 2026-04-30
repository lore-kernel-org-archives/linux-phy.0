Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDC3FF8873
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 12:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4q5YTTwXhLSGqOCKDzPAC8UYzYXmHuM/DvB98iouM8=; b=r42QfyymsYbZ4H
	4F780wtlPdFkec2TienKdR5KcMSnrnuxndOQq/DArMjP7qhtb7DrsclS0nMfMgReQExgveMzRovRG
	lyDXjx3projnMj6KNE15VmKicryMazs9dEsvqJQf40I6PcFZ6+luwwgGISik81wmKxjh62nuQG316
	9LbDU7IQveA4+mBvpbTbXdNBwVQG2T5woNTlce2IYoXCUL/+ttTwYC/vXEcpNP2V7/rD1xRjrzTaD
	ZCpSGW3q4yggoMmLEO7+UcgbvIhWR18HDXWxuf1CYSQYAOz8RA6kKS8OR1fXxLSVB/Oi/lzclSdF0
	+guAmZT8ouCxXXVLQayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQo3-00000005Tzx-1vC4;
	Thu, 30 Apr 2026 12:47:51 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQo0-00000005Tyl-2Fy2;
	Thu, 30 Apr 2026 12:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ONGR1P2sejPwseI1U48nJ6Sn9Q1O9l+eOpPQC/6BOKQ=; b=GDxd1AZxCnVt3bGh86E2xy02FF
	zD1YjTRphX9Wx+vRvEYcC2Bp/M+DJphjoDQr/LGJozmZ2YMKHeZQBzVpQzO9m6eDgct9qvvxWxcsc
	o7eRgeivb+MvqVr1UPdmTr3gfrjQi+JYG8QN8yjvC95Xaz8yspeiX9phBRs+4u9W9pO4b7cmmiRkd
	bf+9cTekx1kB/uJgozCHPDabIgck2MoipIjTezVRioi3g74uyWxNNsndFblVYF2UhnhsBKX9Spsip
	b1vhwwPIMsSP6nPf6D+WoZG9vU5+khFElS03T84ODUAiL0DJvaycS3tWIqQJWkVhBGTcFOjEXbydo
	1LyYCQ0Q==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wIQnh-000A3k-0Y;
	Thu, 30 Apr 2026 14:47:29 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wIQng-000HY2-06;
	Thu, 30 Apr 2026 14:47:28 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Cc: Parshuram Thombare <pthombar@cadence.com>,
 Swapnil Jakhade <sjakhade@cadence.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Nikhil Devshatwar <nikhil.nd@ti.com>, Jayesh Choudhary <j-choudhary@ti.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux@ew.tq-group.com, Ying Liu <victor.liu@nxp.com>
Subject: Re: [PATCH v22 4/8] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Date: Thu, 30 Apr 2026 14:47:27 +0200
Message-ID: <15228814.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <q7rze73ohtylj4jgtxun3cg6ih42crfs2u6tioby6yfqciemem@udrdm2g32fgn>
References: <20260424-dcss-hdmi-upstreaming-v22-0-30a28f89298d@oss.nxp.com>
 <DI3YF7J7ZW0P.3OKMUXAM7GW5C@bootlin.com>
 <q7rze73ohtylj4jgtxun3cg6ih42crfs2u6tioby6yfqciemem@udrdm2g32fgn>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27987/Thu Apr 30 08:25:46 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_054748_684255_F1DA51C6 
X-CRM114-Status: UNSURE (   9.73  )
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

Hi,

Am Montag, 27. April 2026, 16:35:55 CEST schrieb Laurentiu Palcu:
> Hi Luca,
>
> [snip]
> > =

> > Another question is whether this driver should have two compatible stri=
ngs,
> > one for hdmi and one for dp, and set the bridge_type based on that. This
> > would make it a lot simpler and remove the need for this function.
> =

> I think this is a good idea. I see no reason why having 2 different
> compatibles wouldn't work. I'll give it a try.

IIRC the original implementation of Sandor had two compatibles, essentially
duplicating lots of code for DP and HDMI. Maybe meanwhile with the rework t=
he
duplication is gone and the different compatibles are feasible again.

Best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
