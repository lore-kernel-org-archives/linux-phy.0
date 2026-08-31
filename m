Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88709C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBO/BYCZ5+ydMk7KzgTJTiahvPkeBscV/gARYlGVTPw=; b=R/f9nKMKNjilmg
	AYENjSYvz2UtrMTspl5B7IzWTHe1y4hfH4RvpCHAAAN286m+4v3i3wih+6fjE2Qax0TMdkNdZZO7c
	bRLcWj9BS065wm+l47TmqoYJAPP0LcQWcZ/mpmx0tN8LwB6mWHfY8nGdMdVhf6gIJ/3F0CN9UCUP3
	T1hSwDYHt0QrNX7W4dJDKX/3YlgsysiH0q29/rSw/uKXImWlOewlKgArMqlbJ9DTtzVT3fo/ZyJ6I
	l2YN7gTKKZLn1pfyPj9C3q9IRbeor7eoTfdw5Y95zq5Ufo3BMFAVVnYVNpbcySSdwLGabT7b1UAWB
	biEOgLZpTf1Vb7X6J0ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BM9-0000000AeXL-18Qd;
	Mon, 31 Aug 2026 23:24:01 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BM6-0000000AeX1-44vQ
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:24:00 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-384c94c9423so494881a91.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218638; x=1788823438; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t3EuOR9GUslMYy5cLrs5U/qjnYbkc8yoD6yTFWIvT+M=;
        b=byzGJXwMyxylIE4NogJzw+kXntdLh1yAfAHPJlIWsclYOfneuzZCkSFnBazMMEVBdC
         I3+mRNV8r9vf5VbZ4Xzg18W4HwTDi1I9i3hq/xjseKVdSyF9Ofl9InvPcEM9nme1mfsD
         nkold+gbfdUFzR8N2ry4W1zQnvf1sy/z0GXPt7VQN2ZbRPCvz5taOB/B1oKaDojGnD9s
         zRrJPNaCk/zlLxbyCqwy6AaHnE4H81+33N2uDEaI9bqwImkZqKISja3wFxfjz47D3v53
         993JOY5RSeUohv827pF5txqB72VDfxGhyNqVIhzFubqfdFgwgXtOhf5wN5Fmy/JMSyWw
         JBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218638; x=1788823438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t3EuOR9GUslMYy5cLrs5U/qjnYbkc8yoD6yTFWIvT+M=;
        b=VKixHqHb14oA4BhaOCieKyZKn+rppLjg5DrFqtVQklznwtOL3lvkvJvX91iXGiMzql
         6kgYb5JD1AIL9+zO9yTWGJxG00zoxy3+NAB20d20NumWFKRvm3Yiu5gTc+WiVozawIDY
         BIGzRMB+f+DDKwP9EzsaH/kysdg88TlcR67pTBN4BW5uFD05wCri6+jqk+tvGmLsnZFy
         v72vqm5iWOVT0Srqn9EqA74BBtFT35UQama+6ZyuewPGwgJswmVnOu0MGvTmVDRM5rpb
         bNH5FBY/JAnr71AgjgGGmkcpPg1oKk2eA0QZ5dBNFzPXvGz3hGSO501j2yqM0MyhDYBT
         lrvA==
X-Forwarded-Encrypted: i=1; AKwUvBz6Y1JqY33DCTOM20AGFurbgfKF//I9RvXB758639W65UlQlSUI6Rp2lsyOLjgQCdy3ktPwmllbSTc=@lists.infradead.org
X-Gm-Message-State: AFuF++kp70CS4Wrpm6Lhz1uocunkWKNDVZzs5dlOUCgQOt3/Oyhe8sM7
	rm8YJ9cgX2qVzQKKIfsOC1ODMhz0BNdthKkqCjWG1kiYTpyIKkGCY7a1
X-Gm-Gg: AYBFou3FX8aTMIb/Zc2e67quNVHf/RvHb7A4PXTZM95N147PxqJWmknd8Mq9fduC3kj
	pVM/2+YJgxxE0IyWDcn9wtZ0ZiFYTZDg5qumYD8VfRF5GKf+R7/qu6mbEjvwaaS/ZFcKjGlJbN0
	ihGCWuCbV5mXI8YEHXIbA4wgpETuqbZdzd+MLfDjTtJq9/nk24N1C1sxL9yTVNTc9bY2sN98uzO
	jm+fGs+wD30qt31h6Y6rzG7OMhcvtY1//iCLY9vCmzXaHpA7DNWOp7TB0P/juBpZP8OmzObhzhc
	B8HsGJ/oxmN9wvzNw51HmLNWZVJghMAFhEhzhLXFaKzPri70IyXfJBN9Gj76W+izW26/W/vmcbl
	cH1blANr8f990+mKfxf6FKoAUSvXQGSyPMblzKISUw4OMV+HUHXNoFedzdz28AudnCZ3zt5bV87
	G22+F3RnYZSsmUmGoI4opVOgCAI0lcqgnSHouYYpe7o4fI1xF4JpfSt42isY8MZWxajw+Mxso=
X-Received: by 2002:a17:90b:5288:b0:381:bcfb:e710 with SMTP id 98e67ed59e1d1-398babbaa1bmr16637563a91.3.1788218637567;
        Mon, 31 Aug 2026 16:23:57 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:23:57 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:05 +0530
Subject: [PATCH v3 1/6] dt-bindings: dma: ti,cppi41: Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-1-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=5496;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=HIZOfZztkTOerpbTCbh6mnrcWPp1/knZyXp0t7QNArY=;
 b=JXYLTjSgWVbdPooDMpJ/A4F3QlYlYjO7N0T4XSe0L+hgJAlH064Ttg3iMKDCGtIF2aOqfjK7t
 vNvl8IiNelaAeL+PHj8zJxwwAdETjJ3vAHpVCEfkmYdpfSkxF+XmX5n
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162359_022925_0CC55A92 
X-CRM114-Status: GOOD (  17.55  )
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

Q29udmVydCBUSSBDUFBJIDQuMSBETUEgY29udHJvbGxlciB0ZXh0IGJpbmRpbmdzIHRvIERUIHNj
aGVtYS4gQWRkCnRpLGFtMzM1OS1jcHBpNDEgYW5kIHRpLGRhODMwLWNwcGk0MSBpbnRvIHNpbmds
ZSBzY2hlbWEgc2luY2UgdGhleSBzaGFyZQp0aGUgc2FtZSBoYXJkd2FyZSBJUCBibG9jayBhbmQg
ZHJpdmVyLiBBZGQgdW5kb2N1bWVudGVkICNkbWEtcmVxdWVzdHMKYW5kIHBvd2VyLWRvbWFpbnMg
cHJvcGVydGllcyB0byBtYXRjaCBleGlzdGluZyBEVFMgdXNhZ2UuCgpSZXZpZXdlZC1ieTogUm9i
IEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogQmhhcmdhdiBK
b3NoaSA8ai5iaGFyZ2F2LnVAZ21haWwuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2RtYS90aS90aSxjcHBpNDEueWFtbCAgICAgIHwgMTA5ICsrKysrKysrKysrKysrKysrKysrKwog
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2FtMzN4eC11c2IudHh0ICAgICAgICAgfCAgMTQg
LS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZGE4eHgtdXNiLnR4dCAgICAgICAgICB8
ICAxMiAtLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEv
dGkvdGksY3BwaTQxLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1h
L3RpL3RpLGNwcGk0MS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uYThjMjhlOGFkYTA3Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2RtYS90aS90aSxjcHBpNDEueWFtbApAQCAtMCwwICsxLDEwOSBAQAorIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCisl
WUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kbWEvdGkv
dGksY3BwaTQxLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFRJIENQUEk0MSBETUEgQ29udHJvbGxlcgorCittYWlu
dGFpbmVyczoKKyAgLSBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9u
aXguZGU+CisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0g
dGksYW0zMzU5LWNwcGk0MQorICAgICAgLSB0aSxkYTgzMC1jcHBpNDEKKworICByZWc6CisgICAg
bWluSXRlbXM6IDMKKyAgICBtYXhJdGVtczogNAorCisgIHJlZy1uYW1lczoKKyAgICBtaW5JdGVt
czogMworICAgIG1heEl0ZW1zOiA0CisKKyAgaW50ZXJydXB0czoKKyAgICBtYXhJdGVtczogMQor
CisgIGludGVycnVwdC1uYW1lczoKKyAgICBjb25zdDogZ2x1ZQorCisgICIjZG1hLWNlbGxzIjoK
KyAgICBjb25zdDogMgorCisgIGRtYS1jaGFubmVsczoKKyAgICBkZXNjcmlwdGlvbjogTnVtYmVy
IG9mIERNQSBjaGFubmVscyBzdXBwb3J0ZWQuCisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvdWludDMyCisKKyAgZG1hLXJlcXVlc3RzOgorICAgIGRlc2NyaXB0aW9u
OiBOdW1iZXIgb2YgRE1BIHJlcXVlc3RzIHN1cHBvcnRlZC4KKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKKworICBwb3dlci1kb21haW5zOgorICAgIG1h
eEl0ZW1zOiAxCisKKyAgIiNkbWEtY2hhbm5lbHMiOgorICAgIGRlc2NyaXB0aW9uOiBEZXByZWNh
dGVkLCB1c2UgZG1hLWNoYW5uZWxzIGluc3RlYWQuCisgICAgZGVwcmVjYXRlZDogdHJ1ZQorCisg
ICIjZG1hLXJlcXVlc3RzIjoKKyAgICBkZXNjcmlwdGlvbjogRGVwcmVjYXRlZCwgdXNlIGRtYS1y
ZXF1ZXN0cyBpbnN0ZWFkLgorICAgIGRlcHJlY2F0ZWQ6IHRydWUKKworcmVxdWlyZWQ6CisgIC0g
Y29tcGF0aWJsZQorICAtIHJlZworICAtIHJlZy1uYW1lcworICAtICIjZG1hLWNlbGxzIgorICAt
IGRtYS1jaGFubmVscworCithbGxPZjoKKyAgLSAkcmVmOiAvc2NoZW1hcy9kbWEvZG1hLWNvbnRy
b2xsZXIueWFtbCMKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNvbXBhdGli
bGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogdGksYW0zMzU5LWNw
cGk0MQorICAgIHRoZW46CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICByZWc6CisgICAgICAg
ICAgbWluSXRlbXM6IDQKKyAgICAgICAgcmVnLW5hbWVzOgorICAgICAgICAgIGl0ZW1zOgorICAg
ICAgICAgICAgLSBjb25zdDogZ2x1ZQorICAgICAgICAgICAgLSBjb25zdDogY29udHJvbGxlcgor
ICAgICAgICAgICAgLSBjb25zdDogc2NoZWR1bGVyCisgICAgICAgICAgICAtIGNvbnN0OiBxdWV1
ZW1ncgorICAgICAgICBwb3dlci1kb21haW5zOiBmYWxzZQorICAgICAgcmVxdWlyZWQ6CisgICAg
ICAgIC0gaW50ZXJydXB0LW5hbWVzCisgICAgICAgIC0gaW50ZXJydXB0cworICAgICAgICAtIGRt
YS1yZXF1ZXN0cworICAgIGVsc2U6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICByZWc6Cisg
ICAgICAgICAgbWF4SXRlbXM6IDMKKyAgICAgICAgcmVnLW5hbWVzOgorICAgICAgICAgIGl0ZW1z
OgorICAgICAgICAgICAgLSBjb25zdDogY29udHJvbGxlcgorICAgICAgICAgICAgLSBjb25zdDog
c2NoZWR1bGVyCisgICAgICAgICAgICAtIGNvbnN0OiBxdWV1ZW1ncgorCit1bmV2YWx1YXRlZFBy
b3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBkbWEtY29udHJvbGxlckA3
NDAyMDAwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxhbTMzNTktY3BwaTQxIjsKKyAgICAg
ICAgcmVnID0gPDB4NDc0MDAwMDAgMHgxMDAwPiwKKyAgICAgICAgICAgICAgPDB4NDc0MDIwMDAg
MHgxMDAwPiwKKyAgICAgICAgICAgICAgPDB4NDc0MDMwMDAgMHgxMDAwPiwKKyAgICAgICAgICAg
ICAgPDB4NDc0MDQwMDAgMHg0MDAwPjsKKyAgICAgICAgcmVnLW5hbWVzID0gImdsdWUiLCAiY29u
dHJvbGxlciIsICJzY2hlZHVsZXIiLCAicXVldWVtZ3IiOworICAgICAgICBpbnRlcnJ1cHRzID0g
PDE3PjsKKyAgICAgICAgaW50ZXJydXB0LW5hbWVzID0gImdsdWUiOworICAgICAgICAjZG1hLWNl
bGxzID0gPDI+OworICAgICAgICBkbWEtY2hhbm5lbHMgPSA8MzA+OworICAgICAgICBkbWEtcmVx
dWVzdHMgPSA8MjU2PjsKKyAgICB9OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3VzYi9hbTMzeHgtdXNiLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvYW0zM3h4LXVzYi50eHQKaW5kZXggNjU0ZmZjNjJkMDEzLi44NDMxZGUz
NDYxMjkgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Iv
YW0zM3h4LXVzYi50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vz
Yi9hbTMzeHgtdXNiLnR4dApAQCAtNTEsMjAgKzUxLDYgQEAgVVNCCiBUaGUgY29udHJvbGxlciBz
aG91bGQgaGF2ZSBhbiAidXNiIiBhbGlhcyBudW1iZXJlZCBwcm9wZXJseSBpbiB0aGUgYWxpYXMK
IG5vZGUuCiAKLURNQQotfn5+Ci0tIGNvbXBhdGlibGU6IHRpLGFtMzM1OS1jcHBpNDEKLS0gcmVn
OiBvZmZzZXQgYW5kIGxlbmd0aCBvZiB0aGUgZm9sbG93aW5nIHJlZ2lzdGVyIHNwYWNlczogVVNC
U1MsIFVTQgotICBDUFBJIERNQSBDb250cm9sbGVyLCBVU0IgQ1BQSSBETUEgU2NoZWR1bGVyLCBV
U0IgUXVldWUgTWFuYWdlcgotLSByZWctbmFtZXM6IGdsdWUsIGNvbnRyb2xsZXIsIHNjaGVkdWxl
ciwgcXVldWVtZ3IKLS0gI2RtYS1jZWxsczogc2hvdWxkIGJlIHNldCB0byAyLiBUaGUgZmlyc3Qg
bnVtYmVyIHJlcHJlc2VudHMgdGhlCi0gIGVuZHBvaW50IG51bWJlciAoMCDigKYgMTQgZm9yIGVu
ZHBvaW50cyAxIOKApiAxNSBvbiBpbnN0YW5jZSAwIGFuZCAxNSDigKYgMjkKLSAgZm9yIGVuZHBv
aW50cyAxIOKApiAxNSBvbiBpbnN0YW5jZSAxKS4gVGhlIHNlY29uZCBudW1iZXIgaXMgMCBmb3Ig
UlggYW5kCi0gIDEgZm9yIFRYIHRyYW5zZmVycy4KLS0gZG1hLWNoYW5uZWxzOiBzaG91bGQgYmUg
c2V0IHRvIDMwIHJlcHJlc2VudGluZyB0aGUgMTUgZW5kcG9pbnRzIGZvcgotICBlYWNoIFVTQiBp
bnN0YW5jZS4KLS0gI2RtYS1jaGFubmVsczogZGVwcmVjYXRlZAotCiBFeGFtcGxlOgogfn5+fn5+
fn4KIFRoZSBmb2xsb3dpbmcgZXhhbXBsZSBjb250YWlucyBhbGwgdGhlIG5vZGVzIGFzIHVzZWQg
b24gYW0zMzV4LWV2bToKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvZGE4eHgtdXNiLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91c2IvZGE4eHgtdXNiLnR4dAppbmRleCBmYjIwMjdhN2Q4MGQuLjAwMzIwZDkyZDNiYiAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kYTh4eC11c2Iu
dHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZGE4eHgtdXNi
LnR4dApAQCAtMjcsMTggKzI3LDYgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKIH5+fn5+fn5+fn5+
fn5+fn5+fn5+CiAgLSB2YnVzLXN1cHBseTogUGhhbmRsZSB0byBhIHJlZ3VsYXRvciBwcm92aWRp
bmcgdGhlIFVTQiBidXMgcG93ZXIuCiAKLURNQQotfn5+Ci0tIGNvbXBhdGlibGU6IHRpLGRhODMw
LWNwcGk0MQotLSByZWc6IG9mZnNldCBhbmQgbGVuZ3RoIG9mIHRoZSBmb2xsb3dpbmcgcmVnaXN0
ZXIgc3BhY2VzOiBDUFBJIERNQSBDb250cm9sbGVyLAotICBDUFBJIERNQSBTY2hlZHVsZXIsIFF1
ZXVlIE1hbmFnZXIKLS0gcmVnLW5hbWVzOiAiY29udHJvbGxlciIsICJzY2hlZHVsZXIiLCAicXVl
dWVtZ3IiCi0tICNkbWEtY2VsbHM6IHNob3VsZCBiZSBzZXQgdG8gMi4gVGhlIGZpcnN0IG51bWJl
ciByZXByZXNlbnRzIHRoZQotICBjaGFubmVsIG51bWJlciAoMCDigKYgMyBmb3IgZW5kcG9pbnRz
IDEg4oCmIDQpLgotICBUaGUgc2Vjb25kIG51bWJlciBpcyAwIGZvciBSWCBhbmQgMSBmb3IgVFgg
dHJhbnNmZXJzLgotLSBkbWEtY2hhbm5lbHM6IHNob3VsZCBiZSBzZXQgdG8gNCByZXByZXNlbnRp
bmcgdGhlIDQgZW5kcG9pbnRzLgotLSAjZG1hLWNoYW5uZWxzOiBkZXByZWNhdGVkCi0KIEV4YW1w
bGU6CiAJdXNiX3BoeTogdXNiLXBoeSB7CiAJCWNvbXBhdGlibGUgPSAidGksZGE4MzAtdXNiLXBo
eSI7CgotLSAKMi41NS4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
