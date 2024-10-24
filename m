Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B08ED0BB61
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:References:
	Mime-Version:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fQTRtAeYteD8NzgUaM0VbaobARTiyzG5qP3NTBRlenU=; b=KkAWVmPHpgtDW+sm2JsG/E/230
	KnxFEKLEXi2ASLgojrQLAtjpdU1J8Gq7az3kaMbrpycDwElUWXAF4cpkowBU9okdZdH4lIKUAZMZN
	+JiHjy0SqcJUl669zuoXSA6rN+au+H//K8Kw4Kzp6g5wbMyjWPj8pP5FAJ0HgNJX2TkLZs1mRBkh3
	YI8ZobTuEF3v0Co9f6IMcjQOCsw7XBw9cSToVSs3TbLGicF2ExhLONLk+Al/uG+HK2U/tSudE+OOz
	rsA50ieiY8Gq/+OhOIdwSSqMBC/fF83YkwxyiIGsvFE05t3RgXa5Peieya+Xq6AsiOI6AdUNaBYnH
	vVTwkdZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rBC-0000000GtSZ-03jc;
	Thu, 24 Oct 2024 06:18:42 +0000
Received: from mail-yw1-x1149.google.com ([2607:f8b0:4864:20::1149])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r6g-0000000GsUD-2SLM
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:14:05 +0000
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-6e3497c8eb0so7635827b3.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 23:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729750441; x=1730355241; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXMUNc/LORv2j86/u57jzQlk6FOM7Zoz5+8UmtPcmgU=;
        b=IXgfvbYsY1d1Uw/bAd3dB6/xLCclHbu32zXuO3GvjhL7npcJRsFYVrb+fGvlKoBRN0
         FfDjNvnVGTCvrlf7gAWFUQGCSA3HMLGBI4+JoNBSWE2RSeWsBr8eIpg3OYpWH6xUjR19
         qvBX8h9RuXV04oBKHr4cpzp/5f0ycG20QYlgBmZEUlgDw1P2Q/K1uDKQZ6iwHJ0AzGxP
         KFGnto3GNLU0Lb642lPh/S9Mgf0mNrjQNwphZWJdD/OsA/C7WSuKPD51+W9GlViGwvps
         W/Jvo9ZlyG8EdIHYjrRJ8rYQyolFK2MZ2wSKCsV2KAG0GMcKwu8prR31KPEKJyqTrH4v
         Vk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729750441; x=1730355241;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pXMUNc/LORv2j86/u57jzQlk6FOM7Zoz5+8UmtPcmgU=;
        b=XSnj9jjyZs48hARaYbnZroCPjA86+yMSoy0O7J8Zi47a8TJ8linmxX4/eGEAHhhAno
         jWddR+WoHXLwccxkXw4kco2CwKynS7BFQwlPtktHZKVEZPwNZegarKpKtqThE6zQVoNE
         FLKsqXRUPOykm6T+Iv1oElR6aJB0AXhnj06Gf74dXe69+UiesJ4JrivJ3CBfwsPffFGx
         3u089NzfCFGzQr2zR2IigoFGZt/6rJSG6AUJMSzsIAudY/oDiWKCVIqWTmAwEW528y2W
         0BDisLywra6miqRJK3qZkk4qI26AfyHx22Qxwbbx4PJ9Or6Dum84HcTKbxfE8xKTvLHc
         yl8w==
X-Forwarded-Encrypted: i=1; AJvYcCX/SE0yrboQ2AYjCk2afLoYVdhIzKvesUajU89wzW9fZDk5n+1jtYqlqfsrCsetdwuWHevsb1qrQKU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0Iwu+iTt2P3tg8qcmMxAmcDhLJpMK1iTNchASjbg6+mLjUmkO
	BzOJ7FovimK93PpKCWYc9h4gkK0ZPZBWzBNEcS7JLGBWRrTWLHgImIWF1Rsplm/WSHX36oBzzXD
	+hNe2k7krVYNYiw==
X-Google-Smtp-Source: AGHT+IEvWKI797qzaVIyJQytUKUTuDrxqDTilc69F1bH77+J3k5wYMBvLRY6cYuzVgsPwwCo2eftygSjpmQuXoI=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:965e:f81d:c9fb:b352])
 (user=saravanak job=sendgmr) by 2002:a05:690c:9c06:b0:6e3:c4cb:689b with SMTP
 id 00721157ae682-6e866350bbfmr483267b3.4.1729750440665; Wed, 23 Oct 2024
 23:14:00 -0700 (PDT)
Date: Wed, 23 Oct 2024 23:13:43 -0700
In-Reply-To: <20241024061347.1771063-1-saravanak@google.com>
Message-Id: <20241024061347.1771063-3-saravanak@google.com>
Mime-Version: 1.0
References: <20241024061347.1771063-1-saravanak@google.com>
X-Mailer: git-send-email 2.47.0.105.g07ac214952-goog
Subject: [PATCH 2/3] phy: tegra: xusb: Set fwnode for xusb port devices
From: Saravana Kannan <saravanak@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Saravana Kannan <saravanak@google.com>, 
	"=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=" <nfraprado@collabora.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_231402_648879_6EB4A581 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Zndub2RlIG5lZWRzIHRvIGJlIHNldCBmb3IgYSBkZXZpY2UgZm9yIGZ3X2RldmxpbmsgdG8gYmUg
YWJsZSB0bwp0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNpZXMgY29ycmVjdGx5LiBXaXRob3V0
IHRoaXMsIHlvdSdsbCBzZWUgZXJyb3IKbWVzc2FnZXMgbGlrZSB0aGlzIHdoZW4gdGhlIHN1cHBs
aWVyIGhhcyBwcm9iZWQgYW5kIHRyaWVzIHRvIG1ha2Ugc3VyZQphbGwgaXRzIGZ3bm9kZSBjb25z
dW1lcnMgYXJlIGxpbmtlZCB0byBpdCB1c2luZyBkZXZpY2UgbGlua3M6Cgp0ZWdyYS14dXNiLXBh
ZGN0bCAzNTIwMDAwLnBhZGN0bDogRmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UgbGluayAoMHgxODAp
IHdpdGggMS0wMDA4CgpSZXBvcnRlZC1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5j
b20+CkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwOTEwMTMwMDE5LjM1
MDgxLTEtam9uYXRoYW5oQG52aWRpYS5jb20vClRlc3RlZC1ieTogSm9uIEh1bnRlciA8am9uYXRo
YW5oQG52aWRpYS5jb20+ClN1Z2dlc3RlZC1ieTogIk7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIiA8
bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFNhcmF2YW5hIEthbm5hbiA8
c2FyYXZhbmFrQGdvb2dsZS5jb20+Ci0tLQogZHJpdmVycy9waHkvdGVncmEveHVzYi5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5j
CmluZGV4IGNmZGI1NGI2MDcwYS4uMGEyMDk2MDg1OTcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLmMKKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCkBAIC01NDMsNyAr
NTQzLDcgQEAgc3RhdGljIGludCB0ZWdyYV94dXNiX3BvcnRfaW5pdChzdHJ1Y3QgdGVncmFfeHVz
Yl9wb3J0ICpwb3J0LAogCiAJZGV2aWNlX2luaXRpYWxpemUoJnBvcnQtPmRldik7CiAJcG9ydC0+
ZGV2LnR5cGUgPSAmdGVncmFfeHVzYl9wb3J0X3R5cGU7Ci0JcG9ydC0+ZGV2Lm9mX25vZGUgPSBv
Zl9ub2RlX2dldChucCk7CisJZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9o
YW5kbGUob2Zfbm9kZV9nZXQobnApKSk7CiAJcG9ydC0+ZGV2LnBhcmVudCA9IHBhZGN0bC0+ZGV2
OwogCiAJZXJyID0gZGV2X3NldF9uYW1lKCZwb3J0LT5kZXYsICIlcy0ldSIsIG5hbWUsIGluZGV4
KTsKLS0gCjIuNDcuMC4xMDUuZzA3YWMyMTQ5NTItZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
