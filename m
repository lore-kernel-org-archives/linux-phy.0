Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFB0C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1DvgW9hssifWSaRwJxhre/uJM+BLZzMrViUVzkfrM0=; b=iCzf2jZ+Ry/U06
	eDAecm1bt9rPBuEcWCvWIpExbCTfpVHDIxnLVJ7mGZ3Wy30gy/kg8mMop/Vd1sSIRufN+eCveEALs
	ZRhuycLwGBdyj2EgOr0ACxmGNzoa2bR3skpo9PZchI0YplDiktfwn9cTXo9fw5mC0AlRJ4OVmYspv
	3RrqEa2m8OiCV92Uxr//Ypn53WqU162phDWzUwj0TlSFMy0nKwtMC3P+W1CjZoHrcG+H60zRcooum
	UiSoiPLtYk7K9Gl6sfYKa/54Gop5F2RI0UE1ccE0mS9ImjoUgVyJcE8ajQ0OQ3SQOyuTLY7t4oV41
	Wd0Zjs/MgCmP34bHs9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUjl-006umU-Ei; Wed, 12 Oct 2022 05:57:01 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUjM-006uf3-9g; Wed, 12 Oct 2022 05:56:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554190; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kHyfkaFSXKsIudi2PPUrBUlpRFpJt9ZBIp6EYH64gahYd1XqU2tCJZf+4ZNIT8Lb0O8uGjzo/P6RVl152jek0pC70dE5EkCAEDIH44QUV3mNI4hyGSTaF14eC5lQvrKJMLWAZ4OpDfXSDqPjNmlnlybo4VLtuoyI9sbKNOwvmRo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554190; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=3OPT6La0yyILaQA8ZiMW97xZB2rAbOV4OPtV+1MiTW4=; 
	b=njfa9XpGf9e1G28hMDxqsNWACJk3tx3++JtvlVOKmQ75QoGdh4tjPrTey/urCoyE+u0WhT5ohxetNm4cQDNc9oJSopmY4o8bBpPltqFeaGHp84ITUpRKxLnasla1h/RyakYO9dK8FP/uJ9MrvIGfHYZjlZyCfYjDzFUyCeBb7UI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554190;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=3OPT6La0yyILaQA8ZiMW97xZB2rAbOV4OPtV+1MiTW4=;
	b=hWtVFDuqhL8JStrPc9R/YcdW9F3/nTi3x1goeoutyVTNhgDfSgd/2a6ZyA0jgVCA
	aVoBJPI5qXDme41nYxJquX7MB3meoxGpPlJWJKLtWtFsVKRWJ1jmvB0Aod8TPMXpkNy
	soqsfCpdDWfJHNlTbZaAfv6z1S45QJ9ncVOTDQYY=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554187702589.1497638513014; Tue, 11 Oct 2022 22:56:27 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 01/10] mailmap: update Icenowy Zheng's mail address
Date: Wed, 12 Oct 2022 13:55:53 +0800
Message-Id: <20221012055602.1544944-2-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225636_429535_58BBE577 
X-CRM114-Status: UNSURE (   8.53  )
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

Due to the SMTP provider adopted by AOSC applied some more restricted
rate limit that is not suitable for sending kernel patches, I switched
to a mailbox hosted on my own domain name now. In addition, there's a
single commit that is pushed to the mainline kernel tree during my
internship at Sipeed the last year.

Map two AOSC mail addresses (both aosc.io and aosc.xyz domain names) and
a defunct Sipeed mail address to the new mail address.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes since v1.

 .mailmap | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.mailmap b/.mailmap
index 380378e2db36..59b7130c3d1b 100644
--- a/.mailmap
+++ b/.mailmap
@@ -168,6 +168,9 @@ Henrik Rydberg <rydberg@bitmath.org>
 Herbert Xu <herbert@gondor.apana.org.au>
 Huacai Chen <chenhuacai@kernel.org> <chenhc@lemote.com>
 Huacai Chen <chenhuacai@kernel.org> <chenhuacai@loongson.cn>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.io>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.xyz>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@sipeed.com>
 Jacob Shin <Jacob.Shin@amd.com>
 Jaegeuk Kim <jaegeuk@kernel.org> <jaegeuk@google.com>
 Jaegeuk Kim <jaegeuk@kernel.org> <jaegeuk.kim@samsung.com>
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
