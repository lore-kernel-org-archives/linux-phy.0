Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260A2C369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 14:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2B06QUOsGK2vYi9s6GB8JadW1rUbAB44R5MMQecwas=; b=hFx6CHEh2oXtvC
	dk97MbefcMhedBLzHkUjnOlfK0PKg/Gh8tsRxtvWJzdZo1h++AkOmVZYb1P8VpB+H7PMzj/K1Y99E
	wqVetVCpJoTATQtKfyjTla0P6fl71foQW/0wQgeY4TltAJRFGZhUtSmX470Al9ltj0ufwAKqFEgGh
	SCq6J5M+y3y9Kv8qJnhCNZReNc4Pus+GZrsqetXhJ/Em45G/AbjOD0D8pPLstFEDrIZohJ6wHu9ou
	djx267Xn+VPS5mjfHd8QjC/CL03tXdT8FECkOek2M0F37ZMNCc444bsNOStlxuOqxze0sK+PLc975
	M+b6WnnhvYM7W04E1hsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7b7R-0000000Aprq-3p5J;
	Wed, 23 Apr 2025 14:30:33 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aS5-0000000Af6F-1kxy;
	Wed, 23 Apr 2025 13:47:51 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 28C5961667;
	Wed, 23 Apr 2025 13:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1745416063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hdJG21TL+AvOeJeTB8RJ+cFa9H+iGGwKryVw2CrsL0k=;
	b=JzGmmKZgT3R57Pwt0GXRMMsCtFazMoMWkuqMY2D9xQOuB/NE14E7uWC74E3A77pWXlqw1e
	QuosA8MFdJteMooqttO5xwm6HcODZ8FDCeF2ppRJL+GU/zvn1S3g7UkMLdvJBMXGoC6kxV
	LU2dsNj/nY/0lXQ+YCJZXB3+ZKiVvjU=
Received: from [IPv6:::1] (unknown [IPv6:2a01:599:a06:ae47:924d:415c:d602:5492])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id AE5951005B4;
	Wed, 23 Apr 2025 13:47:41 +0000 (UTC)
Date: Wed, 23 Apr 2025 15:47:41 +0200
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Lee Jones <lee@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
 Daniel Golle <daniel@makrotopia.org>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_1/8=5D_dt-bindings=3A_arm=3A?=
 =?US-ASCII?Q?_mediatek=3A_add_bpi-r4_2g5_phy_variant?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20250423123339.GA191369-robh@kernel.org>
References: <20250422132438.15735-1-linux@fw-web.de> <20250422132438.15735-2-linux@fw-web.de> <20250423123339.GA191369-robh@kernel.org>
Message-ID: <D036900A-79D2-4C87-9D77-DBF443E12028@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: c11d15a8-4a69-4433-87de-3e7ec32e89b2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_064749_623063_AAFE1234 
X-CRM114-Status: UNSURE (   5.50  )
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

Am 23. April 2025 14:33:39 MESZ schrieb Rob Herring <robh@kernel.org>:
>On Tue, Apr 22, 2025 at 03:24:24PM +0200, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>> 
>> Add new compatible for Bananapi R4 with 2.5G phy.
>> Base board is compatible with existing BPI-R4 only 1 SFP is replaced
>> by RJ45 port and use mt7988 internal phy.
>> 
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>
>You didn't add Krzysztof's acks on these patches.

Sorry,i thought i've added them in my local branch before running format-patch,but it seems i missed that somehow, possibly dropped these changes while aborting rebase.

regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
