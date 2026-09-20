Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE72EC982D8
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t+XCXuiXgu9pc9M/0xq+eJLKHzG9RsS9jSNvB2cfnag=; b=JLiRoM1hQDo0Qh
	wnTG1Ye7T2nXeQF5z/rXAzZpBETxvBgOwb1rcNB91463021eHZ7CJQBJ5zI3fU08dY0ShafkWqLPz
	1oOwwTjU+Qmay9xUGJyAiFw+GNNXzrDqlq155k9N13/rX4DtvEIidRd/fwI9NoGA+QxSRh+Q0mpBy
	AjONAOZhq/7QAaTDtGwWE3tLV6XmdXAUI9aq/+PB2i9i+YenRtJrw1hwuwYz1yBKfHB0OH9kJMe4g
	qPe+dJmnKL0qky/C+4rKm4J9IZN/woEPX8S027CMDPLvALnUuNJg8Mj2q20mdfZy06XOwJRMpXBJF
	mTqqAYIL5LKWlA2Epuww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kva-000000008dl-2lZV;
	Sun, 20 Sep 2026 17:02:11 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KvW-000000008cg-3a3H
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:08 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-ca7fcfe1669so1274016a12.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 10:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923725; x=1790528525; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zvaA1R/5NGHCUWO468vfak0l7lZ8RN7fNc21wJSy80Q=;
        b=sQRhlZ8OWSsRlFRmjowlFsC4L1ZmEdpERRztarx4GOkWZknfPFjsJngHKLAQCDZmSm
         5aiCxubMRLOtacOdovFLP8Qq6JQF0XOc2nRbu8SbQdDRKPlsC751uvqQQb5WoZXrSbLg
         ljEHnqYAyyGg90gz9OmIylHAnSkQqPBQFP9KbW38+OPkddeYdK7a+WyUriIeV20G32af
         GmcugYTapsXKztHGvNEVuG/8CHokjWBASzhr674m1h9OlxTVGsY+JS3WxThdSOxiKng5
         zjkveUgujTjW5PNsRxNhDor/DZjmmXuY8I0rCxus3oLQ49fGWNASsTVuOWtU6z8OItzd
         IYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923725; x=1790528525;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zvaA1R/5NGHCUWO468vfak0l7lZ8RN7fNc21wJSy80Q=;
        b=Yge6caHY7PcX9CYhdbWWedN11WR85l265gHDpKIaIAbV89T2J3VWSHJPfyBCtzdot3
         STvfFRnSX+62ROO5PUqNN27n5Z5yWctWPFeraD4An/B8ZhuDh2Qgp+8lovvmHxYHJ8iO
         znzoPejhKZwpJmorssB2GQC9NiPR+1sWufWpXkTxhQT9UHELfv0RYtXbuW7e4gbjLT23
         G6wHojxeGVnd8xGTOcI4+VWd6HeTtXESXyMCBG1BcEllh6SF7bSp7O3PVyy8BxMDYiKO
         +sTAppBrn9SRXN6lhv5FsIKDJAprF0vFX3Dbo1ho5ncVsvt1tNlPmkhGeLJU2Q9AWCdI
         IvPA==
X-Forwarded-Encrypted: i=1; AKwUvBzfq5vDk6e+DuxpFfTxpKjLb6KZ5iGWSAZhiC3p6Jbyf59eFrThdFM70SWHipEIY2Ikv1K97LPA3JU=@lists.infradead.org
X-Gm-Message-State: AFuF++mkT2FgmyFhbPNXYgEYq7ka4Dq2UmRzgXoMWOjdSXtF+lDH/IFE
	P7y0T6nEoauOCLy3W9K4BOh0MVHTfr8EW/lK4wcZ9ygo6XlE/1a2bcPI
X-Gm-Gg: AYBFou1aYJBT5Zo6nh8/zCICCfeEvjpWPNQL2SiIsWTH+Z7J/WGTFvfsWD3hIRX9i1r
	3Jk2g7xKNrhGXm9DtPlmqcnBwnggqY0fZLYCTNWeZ1MYUaZ6+FKrF5BLSJF0ABCNPbW8gUgtwF6
	7trF6tKYBEVUUcaamCM3AGN45O8sNn1m6h4HPaJJVdAObku/z0J4PWi6a2aT/wZZIKKBax8qfI6
	RBrxAJNMNyUubSjN+B/j/I8c9c3+KqzB+zN7+U9UFXO2/IDww7UmPEnvAoikHvwjiCq/UPrOg92
	QZOrhjnnlibPD7vRrpX3l96RCyuU9EyFbnfG+Ab3ycVV5of20Dpwyre/E7FU07ntD5UqG/AmB94
	VmtaRkkFmApuy65m0ab9Dc7FMmi2FoA4xCiqj/3N4M0IeIuInl5jS6q01bl3x4N154SC5NV2ow1
	SZbIZPKqy5izuY95SDjWIwdSkZGF/+60eTYg2bsaEfG+dR1oVkWI1xoPwpRevPwROR4ETPUg==
X-Received: by 2002:a05:6a00:3a18:b0:871:41fa:d1c9 with SMTP id d2e1a72fcca58-874ddffca64mr11441916b3a.25.1789923725129;
        Sun, 20 Sep 2026 10:02:05 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:03 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 00/11] net: pcs: add basic support for RK3568 XPCS
Date: Mon, 21 Sep 2026 01:01:04 +0800
Message-ID: <20260920170116.3624104-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100206_909868_565C8E68 
X-CRM114-Status: GOOD (  21.10  )
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

VGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJL
MzU2OCBTb0MKdXNpbmcgdGhlIGludGVncmF0ZWQgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTLCBh
bG9uZyB3aXRoIG5lY2Vzc2FyeQpmaXhlcyBhbmQgcmVmYWN0b3JpbmcgaW4gdGhlIHN0bW1hYyBj
b3JlIGFuZCBYUENTIGRyaXZlci4KCk1vdGl2YXRpb24KPT09PT09PT09PQpUaGUgUkszNTY4IGlu
dGVncmF0ZXMgYSBEVyBYUENTIGFjY2Vzc2VkIHZpYSBBUEIzIGFuZCBjb25uZWN0ZWQgdG8KYSBO
YW5lbmcgQ29tYm8gU2VyRGVzIFBIWS4gIFNldmVyYWwgYm9hcmRzIChlLmcuLCBBcmlhYm9hcmQK
UGhvdG9uaWNhdCkgdXNlIHRoaXMgaW50ZXJmYWNlIGZvciBHaWdhYml0IEV0aGVybmV0LiAgSG93
ZXZlciwgdGhlCmN1cnJlbnQgdXBzdHJlYW0gc3RtbWFjIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0
IHRoaXMgY29uZmlndXJhdGlvbiwKYW5kIHRoZSBYUENTIGRyaXZlciBoYXMgaXNzdWVzIGluIFNH
TUlJIHBvbGwgbW9kZSB0aGF0IGNhdXNlIHRoZQpsaW5rIHRvIGJlIHJlcG9ydGVkIGluY29ycmVj
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBSZWZhY3Rvcmlu
ZyBzdG1tYWMgUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gYWxsb3cgcGxhdGZvcm0gZHJpdmVy
cwogIGZ1bGwgY29udHJvbCBvdmVyIFBDUyBjcmVhdGlvbi9kZXN0cnVjdGlvbgotIEZpeGluZyB0
aGUgWFBDUyBkcml2ZXIncyBTR01JSSBsaW5rIHJlY292ZXJ5Ci0gQWRkaW5nIGEgUm9ja2NoaXAg
WFBDUyBwbGF0Zm9ybSBnbHVlIGRyaXZlciBhbmQgd2lyaW5nIGl0IHVwIGluCiAgZHdtYWMtcmsK
ClNlcmllcyBvdmVydmlldwo9PT09PT09PT09PT09PT0KCkdlbmVyaWM6CiAgUGF0Y2ggMTogbW92
ZSBYUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQgdG8gcGxhdGZvcm0gZHJpdmVycwoKUEhZOgogIFBh
dGNoIDI6IERUIGJpbmRpbmcgZm9yIE5hbmVuZyBDb21ibyBQSFkgU0dNSUkgTUFDIHNlbGVjdGlv
bgogIFBhdGNoIDM6IGltcGxlbWVudCB0aGUgUEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24gaW4gZHJp
dmVyCgpSSzM1NjggWFBDUy9TR01JSToKICBQYXRjaCA0OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hp
cCBSSzM1NjggWFBDUwogIFBhdGNoIDU6IGFkZCBYUENTIGFuZCBmaXhlZC1jbG9jayBub2RlcyB0
byByazM1NjguZHRzaQogIFBhdGNoIDY6IGFkZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3IgU0dNSUkg
bGluayByZWNvdmVyeQogIFBhdGNoIDc6IGltcGxlbWVudCB0aGUgUm9ja2NoaXAgWFBDUyBwbGF0
Zm9ybSBnbHVlIGRyaXZlcgogIFBhdGNoIDg6IERUIGJpbmRpbmcgZm9yIFJvY2tjaGlwIERXTUFD
IFBDUwogIFBhdGNoIDk6IHdpcmUgdXAgU0dNSUkgc3VwcG9ydCBpbiBkd21hYy1yawogIFBhdGNo
IDExOiB1cGRhdGUgTUFJTlRBSU5FUlMKCkJvYXJkIGVuYWJsZW1lbnQ6CiAgUGF0Y2ggMTA6IGVu
YWJsZSBTR01JSSBMQU4gcG9ydCBvbiBQaG90b25pY2F0IGJvYXJkCgpDaGFuZ2Vsb2cKPT09PT09
PT09CgpDaGFuZ2VzIHNpbmNlIHY4OgoKUGF0Y2ggNyAobmV0OiBwY3M6IHhwY3M6IGFkZCBSb2Nr
Y2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIpCi0gUmVwbGFjZSB0aGUgZGV2aWNlX2xv
Y2soKS9kZXZpY2VfaXNfYm91bmQoKSBjaGVjayBpbiB4cGNzX3JrX2NyZWF0ZSgpCiAgd2l0aCBh
IGNoZWNrIG9uIGxpbmstPnN1cHBsaWVyLT5saW5rcy5zdGF0dXMuIGRldmljZV9pc19ib3VuZCgp
IG9ubHkKICB0ZXN0cyB3aGV0aGVyIHRoZSBzdXBwbGllcidzIGRyaXZlciBwb2ludGVyIGlzIHNl
dCwgYW5kIHRoYXQgcG9pbnRlcgogIGlzIGNsZWFyZWQgYXQgdGhlIHZlcnkgZW5kIG9mIHRoZSB1
bmJpbmQgcGF0aCwgYWZ0ZXIgZGV2cmVzIGhhcwogIGFscmVhZHkgZnJlZWQgdGhlIGRydmRhdGEu
IENoZWNraW5nIHRoZSBkZXZpY2UgbGluaydzIHN1cHBsaWVyIHN0YXRlCiAgaW5zdGVhZCB0ZWxs
cyB1cyB3aGV0aGVyIHRoZSBsaW5rIGFjdHVhbGx5IHBpbnMgdGhlIHN1cHBsaWVyOiBpZiB0aGUK
ICBzdXBwbGllciB3YXMgRExfREVWX0RSSVZFUl9CT1VORCB3aGVuIHRoZSBsaW5rIHdhcyBjcmVh
dGVkLCB0aGUgbGluawogIGlzIGluIERMX1NUQVRFX0NPTlNVTUVSX1BST0JFIGFuZCB1bmJpbmQg
d2FpdHMgZm9yIHRoaXMgcHJvYmU7IGFueQogIG90aGVyIHN0YXRlIG1lYW5zIHRoZSBzdXBwbGll
ciBpcyBub3QgdXNhYmxlIGFuZCB3ZSBkZWZlci4KLSBEcm9wIHRoZSBkZXZpY2VfbG9jaygpL2Rl
dmljZV91bmxvY2soKSBwYWlyLCB3aGljaCBpcyBubyBsb25nZXIKICBuZWVkZWQgc2luY2UgdGhl
IGxpbmsgc3RhdGUgaXRzZWxmIGNhcnJpZXMgdGhlIHByb3RlY3Rpb24uCi0gVXBkYXRlIHRoZSBj
b21tZW50IGFib3ZlIGRldmljZV9saW5rX2FkZCgpIHRvIGRlc2NyaWJlIHRoZSBuZXcKICByZWFz
b25pbmcuCgpLZXkgZGVzaWduIGRlY2lzaW9ucwo9PT09PT09PT09PT09PT09PT09PQotIFRoZSBz
dG1tYWMgY29yZSBub3cgZGVsZWdhdGVzIFhQQ1MgY3JlYXRpb24gZW50aXJlbHkgdG8gcGxhdGZv
cm0KICBkcml2ZXJzIHZpYSBwY3NfaW5pdC9wY3NfZXhpdC4gIFRoaXMgaXMgbmVjZXNzYXJ5IGJl
Y2F1c2UgdGhlCiAgZ2VuZXJpYyBYUENTIGNyZWF0aW9uIGxvZ2ljIHdvdWxkIG92ZXJyaWRlIGFu
eSBYUENTIHNldCB1cCBieSB0aGUKICBwbGF0Zm9ybSBkcml2ZXIuCgotIFRoZSBSb2NrY2hpcCBY
UENTIGRyaXZlciBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyBvdmVyIHRoZSBBUEIzCiAgcmVn
aXN0ZXJzIGFuZCBpbXBsZW1lbnRzIGFkZHJlc3MgcmVtYXBwaW5nLiAgVGhlIGdlbmVyaWMgWFBD
UyBjb3JlCiAgaGFuZGxlcyBhbGwgUENTIGNvbmZpZ3VyYXRpb24gdmlhIHBoeWxpbmtfcGNzX29w
cy4KCi0gT24gUkszNTY4IGluIFNHTUlJIG1vZGUsIHRoZSBNQUMgY2xvY2sgaXMgZml4ZWQgYXQg
MTI1IE1IeiBhbmQKICBjYW5ub3QgYmUgZHluYW1pY2FsbHkgY2hhbmdlZC4gIEluLWJhbmQgbW9k
ZSBpcyB1c2VkLCBhbmQgdGhlCiAgZ2VuZXJpYyBzdG1tYWMgc2V0X2Nsa190eF9yYXRlIGNhbGxi
YWNrIGlzIGRpc2FibGVkIHRvIHByZXZlbnQKICBpbmNvcnJlY3QgY2xvY2sgdXBkYXRlcyB0aGF0
IHdvdWxkIGJyZWFrIFJYLgoKLSBUaGUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4gYXJlIGF0dGFj
aGVkIHRvIHRoZSBYUENTIGRldmljZSB0cmVlCiAgbm9kZSByYXRoZXIgdGhhbiB0aGUgTUFDIG5v
ZGUuIFRoaXMgcmVmbGVjdHMgdGhlIGFjdHVhbCBoYXJkd2FyZQogIHRvcG9sb2d5IGFuZCBzaW1w
bGlmaWVzIHRoZSBkd21hYy1yayBkcml2ZXIgYnkga2VlcGluZyBhbGwgUENTLXJlbGF0ZWQKICBy
ZXNvdXJjZXMgc2VsZi1jb250YWluZWQuIEl0IGFsc28gcHJlcGFyZXMgZm9yIHBvc3NpYmxlIGZ1
dHVyZSBRU0dNSUkKICBzdXBwb3J0LCB3aGVyZSBhIHNpbmdsZSBTZXJEZXMgc2VydmVzIG11bHRp
cGxlIE1BQ3MgYW5kIHdvdWxkIGJlCiAgbW9yZSBuYXR1cmFsbHkgbWFuYWdlZCB1bmRlciB0aGUg
WFBDUyBub2RlLgoKVGVzdGluZwo9PT09PT09CkJvYXJkOiBBcmlhYm9hcmQgUGhvdG9uaWNhdCAo
UkszNTY4KQpPUzogQXJtYmlhbiAodHJpeGllKQpLZXJuZWw6IDYuMTggKGJhY2twb3J0cykKUmVz
dWx0OiBUaGUgU0dNSUkgaW50ZXJmYWNlIG9idGFpbnMgYW4gSVAgYWRkcmVzcywgU1NIIHdvcmtz
LCBhbmQKICAgICAgICBwaW5nIHRyYWZmaWMgcGFzc2VzIHdpdGhvdXQgbG9zcy4KCk5vdGVzCj09
PT09Ci0gV2hlbiB0ZXN0aW5nIG91dC1iYW5kIG1vZGUgd2l0aCBzZXRfY2xrX3R4X3JhdGUsIG9u
bHkgMTAwME1icHMKICB3b3JrcyBvbiBib3RoIFRYL1JYOyAxMC8xMDBNYnBzIG9ubHkgd29ya3Mg
b24gVFggc2lkZS4KCkRlcGVuZGVuY2llcwo9PT09PT09PT09PT0KTm9uZS4gQWxsIHBhdGNoZXMg
YXBwbHkgY2xlYW5seSBvbiB0b3Agb2YgdG9ydmFsZHMgbWFzdGVyIHRyZWUgKHY3LjMpLgoKQWNr
bm93bGVkZ21lbnRzCj09PT09PT09PT09PT09PQpUaGlzIHdvcmsgd2FzIGluc3BpcmVkIGJ5IGFu
ZCBidWlsZHMgdXBvbiB0aGUgZXhjZWxsZW50IHdvcmsgb2Ygb3RoZXJzOgotIFNlcmdlIFNlbWlu
J3MgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHBsYXRmb3JtIGRyaXZlciAocGNzLXhwY3MtcGxh
dC5jKQotIENsw6ltZW50IEzDqWdlcidzIFJlbmVzYXMgTUlJQyBkcml2ZXIgKHBjcy1yem4xLW1p
aWMuYykKLSBUaGUgUm9ja2NoaXAgVFJNIGFuZCBkb3duc3RyZWFtIE9FTSBkcml2ZXJzCgpUaGFu
a3MgaW4gYWR2YW5jZSwKQ29pYSBQcmFudAotLS0KQ29pYSBQcmFudCAoMTEpOgogIG5ldDogc3Rt
bWFjOiBtb3ZlIFhQQ1MgbGlmZXRpbWUgbWFuYWdlbWVudCB0byBwbGF0Zm9ybSBkcml2ZXJzCiAg
ZHQtYmluZGluZ3M6IHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBhZGQgcm9ja2NoaXAs
c2dtaWktbWFjLXNlbAogICAgcHJvcGVydHkKICBwaHk6IHJvY2tjaGlwOiBuYW5lbmctY29tYnBo
eTogYWRkIFNHTUlJIE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OAogIGR0LWJpbmRpbmdzOiBuZXQ6
IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14cGNzIHN1cHBvcnQKICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogcmszNTY4OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9kZXMKICBuZXQ6IHBjczog
eHBjczogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAgbmV0
OiBwY3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKICBk
dC1iaW5kaW5nczogbmV0OiByb2NrY2hpcC1kd21hYzogZG9jdW1lbnQgcGNzLWhhbmRsZQogIG5l
dDogc3RtbWFjOiBkd21hYy1yazogYWRkIFNHTUlJIHN1cHBvcnQgZm9yIFJLMzU2OAogIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiByazM1NjgtcGhvdG9uaWNhdDogZW5hYmxlIFNHTUlJIExBTiBwb3J0
CiAgTUFJTlRBSU5FUlM6IGFkZCBlbnRyeSBmb3IgUm9ja2NoaXAgWFBDUyBkcml2ZXIKCiAuLi4v
bmV0L3Bjcy9yb2NrY2hpcCxyazM1NjgteHBjcy55YW1sICAgICAgICAgfCAxMTAgKysrKwogLi4u
L2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDE4ICsKIC4uLi9w
aHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwgICAgICB8ICAxMyArCiBNQUlOVEFJ
TkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDkgKwogLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cyAgIHwgIDc0ICsrLQogYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSAgICAgIHwgIDQ1ICsrCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAgIDEgKwogLi4uL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1pbnRlbC5jIHwgIDQ0ICstCiAuLi4vc3RtaWNyby9z
dG1tYWMvZHdtYWMtcmVuZXNhcy1nYmV0aC5jICAgICAgfCAgIDcgKy0KIC4uLi9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyAgICB8IDEzMCArKystCiAuLi4vbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJ6bjEuYyAgfCAgIDcgKy0KIC4uLi9ldGhlcm5ldC9z
dG1pY3JvL3N0bW1hYy9kd21hYy1zb2NmcGdhLmMgICB8ICAgNyArLQogLi4uL25ldC9ldGhlcm5l
dC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWRpby5jIHwgIDM5ICstCiBkcml2ZXJzL25ldC9wY3Mv
S2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMjUgKwogZHJpdmVycy9uZXQvcGNzL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL25ldC9wY3MvcGNz
LXhwY3MtcmsuYyAgICAgICAgICAgICAgICAgfCA1OTkgKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyAgICAgICAgICAgICAgICAgICAgfCAgMzUgKy0KIC4uLi9y
b2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAgICB8ICAgOCArCiBpbmNsdWRl
L2xpbnV4L3Bjcy9wY3MteHBjcy1yay5oICAgICAgICAgICAgICAgfCAgMTEgKwogMTkgZmlsZXMg
Y2hhbmdlZCwgMTExNSBpbnNlcnRpb25zKCspLCA3MiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hp
cCxyazM1NjgteHBjcy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGNzL3Bj
cy14cGNzLXJrLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBj
cy1yay5oCgotLSAKMi40Ny4zCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
