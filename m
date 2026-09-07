Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5378C79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qjow1TB2xW1YHXP+punMtXdSRcRDpm1Y7qHx2CJ3+qc=; b=RDJ9DUL0oU3Q0Z
	rLz8RtpY4cKqZfGP0nB1LqsoBAXp1XviYbTbfTQEzPBa7gsqhF5O0l8wRGTFzcHhT6W/I//pOCjm6
	KVStt2oR+3eomye+XodLKcF7SMv7sKYDX75ni8ubN8Vpldd2G+P+iDMiXzrn1QthWyw8bFdPIOYfK
	DYCHUyfU7IifeYM0bJB3l/i6teSDBsbLHubyuhLLBizUPDfHYt2l5eo+kbXzE6A3BDkOzbZJssnrz
	EuGWruZBCotSE/itN4Hneyi1Y983khVNuGnArwXLjgMW4rhJXMT4Reqe0SGNQRn9Vp9PO+rCd4xGD
	SV99U84wjMEHYXV2sO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQf-00000007BtQ-25Gr;
	Mon, 07 Sep 2026 15:38:41 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bQb-00000007Bra-1DjR
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:38:40 +0000
Received: by mail-pj2-x07.google.com with SMTP id d9443c01a7336-2d9181b7e1bso4325795ad.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795516; x=1789400316; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Hq1rNKVGmliGTWsiFEwtrdEOPueQghmo9INX52ut/jY=;
        b=HJ+8fflLaC1x+ciQh8aqqY45GdL3iwbnmW0iwWuRKruC9/Pkl+u+DGGBd2qPLbwpZ9
         U7+2mKjlwCte0GrUopsyVrRZoYMc7Bq9+qaMVK4J7HgISzNob+/sbsFLzGSMj8B0s9UJ
         ZMuwjqD/d3hOE3fQHURFz88rddPBceiqC2b3mp5JjK/Tvvyju7mrbCJssQk9JuCclM8K
         qqE4AT2lSSrRXNSd5L3V+ZF3WZy8COsOJdRJuSboP+QraATt0hcUMouBLMtuO2Jc0iX6
         qDlKWbYz6CREqL+xWjNizHPeDiPy6OaY2Mr1zQzMqmCyy0w3z1PTw3J8Gn7mYs1/gvWK
         qYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795516; x=1789400316;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Hq1rNKVGmliGTWsiFEwtrdEOPueQghmo9INX52ut/jY=;
        b=HY6CJdA1ZbT+ulMFe9ZM8wxucN4QZICqv/m+aYLK1NlLCuAeeWOCtcSAy4bS12stTE
         o03lXt/unvx7tRqWwai0gu35eM5jDq2yLTLmlzQiLZV9XhC1/g1I84Y6umKmQfGJRyUA
         ukmY4E6RkFaMM4uLJyxdRgF2WshDQhkIaB0jCl3Cx0vRlZdr3m9ozbdVB0dItlLaEZkJ
         SGP1ej3aolPq6WaaYHsSsDMv8ZgE1vkrzexagMxHwphEa+ttbx5ki+y5eYMTllxPnHja
         Vb5vl8igeqzIc9jtyAkZxPxpKncVfLc2xEAMxuXSY9amJjNgSUSdeCcnC3C5us372yh+
         VISQ==
X-Forwarded-Encrypted: i=1; AKwUvBw1Oc5PHlLWB7CAH8oDOHJA/mDCCud1aZAkOg5fRuNw9vPIb+EEmtWPxos6dg8r3p2AdGESAs61rVg=@lists.infradead.org
X-Gm-Message-State: AFuF++lcIDBU84bfVzozcs2MjAfdL/p8L7aaqNlWoojGA+fsYg/F4xC+
	oOgQCcsFQ8msuQygNbpPQPdFs3R2kPCdM9e4pqj4K9mCCDyWceudNf9u
X-Gm-Gg: AYBFou2cx8O5/IHtVBYZqiKADruDy0GprazdzBBPZfSXIovdKpEkr+VfRFc4Ku7rPrS
	pKAqqO4c5z+EbT4F2b9kRdrg3Qf1XkwyaftMhjbJ+QzHBDwBrWYmIn8Oaw4n5t1zD++xdz5pV6c
	XqhyR0iCJQ42ZcIWQmuDjlr432peAM37Rc88h74g2q2DQm3atcmz6RTl6w0JAk+x0b6HfE00fWX
	DGL2v8xk96mH4g/Z4DeHPGCiJr6P/+xCkEWQ49K9sdHbvwjAvhleqMCm59Vaxeg/TZLhOOKicN2
	bjkBCMB7JORRw+FDQ1RQqzOTxE1G+/ujAA4e3WqcVfiSjAvXnu+xwdXr0N06M45IkMKqLdZ8iQl
	X1yCzEqdZlxCYTCwHofWIjj+6SmokdWnw36BLRPfcRbOLnfljCUWS2rxfkpDaD1CmB1tAWfhN4k
	TS63HpQOZrEtEoc+LSUKCLbQ0jGBJBPw5QhkthW4WlaCOLohvShWLaIfynxWU=
X-Received: by 2002:a17:90b:5110:b0:390:84db:888e with SMTP id 98e67ed59e1d1-39b8bd4aef3mr1404027a91.7.1788795516238;
        Mon, 07 Sep 2026 08:38:36 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:38:35 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v4 00/10] net: pcs: add basic support for RK3568 XPCS
Date: Mon,  7 Sep 2026 23:37:03 +0800
Message-ID: <20260907153713.2572547-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083839_587794_A406593B 
X-CRM114-Status: GOOD (  18.42  )
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
Zm9ybSBnbHVlIGRyaXZlcgogIFBhdGNoIDg6IHdpcmUgdXAgU0dNSUkgc3VwcG9ydCBpbiBkd21h
Yy1yawogIFBhdGNoIDEwOiB1cGRhdGUgTUFJTlRBSU5FUlMKCkJvYXJkIGVuYWJsZW1lbnQ6CiAg
UGF0Y2ggOTogZW5hYmxlIFNHTUlJIExBTiBwb3J0IG9uIFBob3RvbmljYXQgYm9hcmQKCkNoYW5n
ZWxvZwo9PT09PT09PT0KCkNoYW5nZXMgc2luY2UgdjM6CgpQYXRjaCA3IChuZXQ6IHBjczogeHBj
czogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRyaXZlcikKLSBSZXZlcnRlZCBN
YWtlZmlsZSBjaGFuZ2UgdG8ga2VlcCBwY3NfeHBjcyBhcyBhIGNvbXBvc2l0ZSBtb2R1bGUKLSBT
d2l0Y2hlZCBmcm9tIG1hbnVhbCBgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpYCB0byBgcG1fcnVu
dGltZV9lbmFibGUoKWAKICBhbmQgdXNlIGBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoKWAgaW4g
YHhwY3NfcmtfZXhpdF9jbGsoKWAKLSBSZW1vdmVkIGB4cGNzX3JrX3JlbW92ZSgpYCBjYWxsYmFj
ayBlbnRpcmVseTsgY2xlYW51cCBpcyBub3cgZnVsbHkKICBtYW5hZ2VkIGJ5IGRldnJlcyB2aWEg
YHhwY3NfcmtfZXhpdF9jbGsoKWAuCgpLZXkgZGVzaWduIGRlY2lzaW9ucwo9PT09PT09PT09PT09
PT09PT09PQotIFRoZSBzdG1tYWMgY29yZSBub3cgZGVsZWdhdGVzIFhQQ1MgY3JlYXRpb24gZW50
aXJlbHkgdG8gcGxhdGZvcm0KICBkcml2ZXJzIHZpYSBwY3NfaW5pdC9wY3NfZXhpdC4gIFRoaXMg
aXMgbmVjZXNzYXJ5IGJlY2F1c2UgdGhlCiAgZ2VuZXJpYyBYUENTIGNyZWF0aW9uIGxvZ2ljIHdv
dWxkIG92ZXJyaWRlIGFueSBYUENTIHNldCB1cCBieSB0aGUKICBwbGF0Zm9ybSBkcml2ZXIuCgot
IFRoZSBSb2NrY2hpcCBYUENTIGRyaXZlciBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyBvdmVy
IHRoZSBBUEIzCiAgcmVnaXN0ZXJzIGFuZCBpbXBsZW1lbnRzIGFkZHJlc3MgcmVtYXBwaW5nLiAg
VGhlIGdlbmVyaWMgWFBDUyBjb3JlCiAgaGFuZGxlcyBhbGwgUENTIGNvbmZpZ3VyYXRpb24gdmlh
IHBoeWxpbmtfcGNzX29wcy4KCi0gT24gUkszNTY4IGluIFNHTUlJIG1vZGUsIHRoZSBNQUMgY2xv
Y2sgaXMgZml4ZWQgYXQgMTI1IE1IeiBhbmQKICBjYW5ub3QgYmUgZHluYW1pY2FsbHkgY2hhbmdl
ZC4gIEluLWJhbmQgbW9kZSBpcyB1c2VkLCBhbmQgdGhlCiAgZ2VuZXJpYyBzdG1tYWMgc2V0X2Ns
a190eF9yYXRlIGNhbGxiYWNrIGlzIGRpc2FibGVkIHRvIHByZXZlbnQKICBpbmNvcnJlY3QgY2xv
Y2sgdXBkYXRlcyB0aGF0IHdvdWxkIGJyZWFrIFJYLgoKLSBUaGUgU2VyRGVzIGFuZCBwb3dlciBk
b21haW4gYXJlIGF0dGFjaGVkIHRvIHRoZSBYUENTIGRldmljZSB0cmVlCiAgbm9kZSByYXRoZXIg
dGhhbiB0aGUgTUFDIG5vZGUuIFRoaXMgcmVmbGVjdHMgdGhlIGFjdHVhbCBoYXJkd2FyZQogIHRv
cG9sb2d5IGFuZCBzaW1wbGlmaWVzIHRoZSBkd21hYy1yayBkcml2ZXIgYnkga2VlcGluZyBhbGwg
UENTLXJlbGF0ZWQKICByZXNvdXJjZXMgc2VsZi1jb250YWluZWQuIEl0IGFsc28gcHJlcGFyZXMg
Zm9yIHBvc3NpYmxlIGZ1dHVyZSBRU0dNSUkKICBzdXBwb3J0LCB3aGVyZSBhIHNpbmdsZSBTZXJE
ZXMgc2VydmVzIG11bHRpcGxlIE1BQ3MgYW5kIHdvdWxkIGJlCiAgbW9yZSBuYXR1cmFsbHkgbWFu
YWdlZCB1bmRlciB0aGUgWFBDUyBub2RlLgoKVGVzdGluZwo9PT09PT09CkJvYXJkOiBBcmlhYm9h
cmQgUGhvdG9uaWNhdCAoUkszNTY4KQpPUzogQXJtYmlhbiAodHJpeGllKQpLZXJuZWw6IDYuMTgg
KGJhY2twb3J0cykKUmVzdWx0OiBUaGUgU0dNSUkgaW50ZXJmYWNlIG9idGFpbnMgYW4gSVAgYWRk
cmVzcywgU1NIIHdvcmtzLCBhbmQKICAgICAgICBwaW5nIHRyYWZmaWMgcGFzc2VzIHdpdGhvdXQg
bG9zcy4KCk5vdGVzCj09PT09Ci0gV2hlbiB0ZXN0aW5nIG91dC1iYW5kIG1vZGUgd2l0aCBzZXRf
Y2xrX3R4X3JhdGUsIG9ubHkgMTAwME1icHMKICB3b3JrcyBvbiBib3RoIFRYL1JYOyAxMC8xMDBN
YnBzIG9ubHkgd29ya3Mgb24gVFggc2lkZS4KCkRlcGVuZGVuY2llcwo9PT09PT09PT09PT0KTm9u
ZS4gQWxsIHBhdGNoZXMgYXBwbHkgY2xlYW5seSBvbiB0b3Agb2YgdG9ydmFsZHMgbWFzdGVyIHRy
ZWUgKHY3LjMpLgoKQWNrbm93bGVkZ21lbnRzCj09PT09PT09PT09PT09PQpUaGlzIHdvcmsgd2Fz
IGluc3BpcmVkIGJ5IGFuZCBidWlsZHMgdXBvbiB0aGUgZXhjZWxsZW50IHdvcmsgb2Ygb3RoZXJz
OgotIFNlcmdlIFNlbWluJ3MgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHBsYXRmb3JtIGRyaXZl
ciAocGNzLXhwY3MtcGxhdC5jKQotIENsw6ltZW50IEzDqWdlcidzIFJlbmVzYXMgTUlJQyBkcml2
ZXIgKHBjcy1yem4xLW1paWMuYykKLSBUaGUgUm9ja2NoaXAgVFJNIGFuZCBkb3duc3RyZWFtIE9F
TSBkcml2ZXJzCgpUaGFua3MgaW4gYWR2YW5jZSwKQ29pYSBQcmFudAotLS0KQ29pYSBQcmFudCAo
MTApOgogIG5ldDogc3RtbWFjOiBtb3ZlIFhQQ1MgbGlmZXRpbWUgbWFuYWdlbWVudCB0byBwbGF0
Zm9ybSBkcml2ZXJzCiAgZHQtYmluZGluZ3M6IHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5
OiBhZGQgcm9ja2NoaXAsc2dtaWktbWFjLXNlbAogICAgcHJvcGVydHkKICBwaHk6IHJvY2tjaGlw
OiBuYW5lbmctY29tYnBoeTogYWRkIFNHTUlJIE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OAogIGR0
LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14cGNzIHN1cHBvcnQKICBh
cm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9k
ZXMKICBuZXQ6IHBjczogeHBjczogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5r
IHJlY292ZXJ5CiAgbmV0OiBwY3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0g
Z2x1ZSBkcml2ZXIKICBuZXQ6IHN0bW1hYzogZHdtYWMtcms6IGFkZCBTR01JSSBzdXBwb3J0IGZv
ciBSSzM1NjgKICBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6IGVuYWJs
ZSBTR01JSSBMQU4gcG9ydAogIE1BSU5UQUlORVJTOiBhZGQgZW50cnkgZm9yIFJvY2tjaGlwIFhQ
Q1MgZHJpdmVyCgogLi4uL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwgICAg
IHwgMTEwICsrKysKIC4uLi9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwgICAg
ICB8ICAxMyArCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDkgKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cyAgIHwg
IDc0ICsrLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSAgICAgIHwg
IDQ1ICsrCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAg
IDEgKwogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1pbnRlbC5jIHwgIDQ0
ICstCiAuLi4vc3RtaWNyby9zdG1tYWMvZHdtYWMtcmVuZXNhcy1nYmV0aC5jICAgICAgfCAgIDcg
Ky0KIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyAgICB8IDEyMSAr
KystCiAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJ6bjEuYyAgfCAgIDcg
Ky0KIC4uLi9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zb2NmcGdhLmMgICB8ICAgNyAr
LQogLi4uL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWRpby5jIHwgIDM3ICst
CiBkcml2ZXJzL25ldC9wY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMjMgKwog
ZHJpdmVycy9uZXQvcGNzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCiBk
cml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYyAgICAgICAgICAgICAgICAgfCA1NDMgKysrKysr
KysrKysrKysrKysrCiBkcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyAgICAgICAgICAgICAgICAg
ICAgfCAgMTYgKy0KIC4uLi9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAg
ICB8ICAgOCArCiBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBjcy1yay5oICAgICAgICAgICAgICAg
fCAgMTEgKwogMTggZmlsZXMgY2hhbmdlZCwgMTAxNSBpbnNlcnRpb25zKCspLCA2NiBkZWxldGlv
bnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3Bjcy9yb2NrY2hpcC1kd3hwY3MueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51
eC9wY3MvcGNzLXhwY3MtcmsuaAoKLS0gCjIuNDcuMwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
