Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7306C35FE4
	for <linux-phy@archiver.kernel.org>; Sun, 15 Sep 2024 14:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pS+Y3t2fIZIyQP4UtG/tDrIigaGRVZM94Fn5EvAqncc=; b=Mi7yv48iybi/IM
	1FtjtLlNPyDxjiWvkdzFe1cTYssF+/zmMYmQblTw/G0KJMi9k7bxYFsS+JqNq7CsdIG+FYw/fY+h2
	Qz1VzGqZk5Lfo2af9WBLMhNABiQ4dXvhmU9acOxwJoTn2uG71qp1qOG2j6ChPj4uAY64CI7qncE8f
	mWtagXpsGr0CPNiPzaLhDK2zKu4PnNInOWCvgzrgUZj2OGY4NNyHbxDSetqHm3+6nR2QVNLeHMYXT
	kZHvvn55banWJ5RM4NxUmY6oj8Gc94nEFQwTJrUrrEZg4YryxElXu01+hnn5Jw4JjpVCthK7YZwmU
	qa+Q8Vttnx9mpl8mgasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spq5N-00000002Bdk-0th8;
	Sun, 15 Sep 2024 14:18:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spq5J-00000002Bch-3NlG
	for linux-phy@lists.infradead.org;
	Sun, 15 Sep 2024 14:18:43 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5356bb5522bso2986561e87.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Sep 2024 07:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726409920; x=1727014720; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9tm8EdfBqA4EbIk9KtCM7rf2FIUblxVnn9AXeawcKhA=;
        b=klmywmcOIe0etIIBbgHP0MZQRkZicJuQREJt6WCRM8RPe7wwiR6/tvXPN8gVHB4sRx
         CxkO/sMj7CrD2dFTdyLszrv5e903FswLI5L4qvpxnZOWv1Gtx+XiPN0vMZf/fpVTKfvh
         rcvzUoShLzCCND2YZ84+W0nEnF82fueC3bwSq/TK+QSymdErRAok36mntT1szBmgZhxG
         XSqr4iboluIrO2GA2HNM8u+Jhbp/022Xd+SSx6hljTfQPSEf1DOnoyOdejBNox8JMh+x
         ZLIUSGqiEMrxapYzw+Gf6uwinzR/HexfiwIKP2Iw1ETtnmi6G5MBs1zg43UXEPjZTr6i
         e4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726409920; x=1727014720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9tm8EdfBqA4EbIk9KtCM7rf2FIUblxVnn9AXeawcKhA=;
        b=BuJNeOfWSium3jR9+HwZUWlPZ1PMLwTZgL1cqG95CEAEEegbZ0xfNY2AezvhKQjchU
         8tLCq/2v38WomOMB0zkTUVNPiywswvL7ZNosJ5hyVUPb43IMWSo1qEn/FAq9sjLeeoFu
         6bYEWR0W2tt97WtscaIzGMSNgL/m25mY1FyHfJ4p8VTpIL063GCxTeHWw7yGl7MltiFA
         ZNIwGV5ceL1qPrljEb0VM6IhJSgLvgEAcmpw57mWTpC5uBqGi0Km/hrgoND4MdUQE58Q
         0JJsg9Gd4d00yeURMxqbG38W2ZoaYutLhmyUq/Gzha38dR3gtPuINWg9Z2c39duWFk2p
         MdbA==
X-Forwarded-Encrypted: i=1; AJvYcCW6a63WOOsm2yCstj7WD+IQV1Dao9tuO7NQ+98eTGbKVNpqzfFIfsAcE1xf4cdTEASWGy6s9fgR4O4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq+X2jQqqLVRLF2DcyFG1L29pkmjjvxcQson+RokuK8PivZ16r
	TbDJeNuQnQoq2M85NRVpx+ssqcT3cVW402ZlGbf37OY+AUSuS+Ml
X-Google-Smtp-Source: AGHT+IGChd773bHzvc7VyX7LAnk0ViOaR+F14Aq+UPxCr7/Rq2wjKe4SWEYiP3WjqyOMh1wSPY7/7g==
X-Received: by 2002:a05:6512:124e:b0:534:3cdc:dbfe with SMTP id 2adb3069b0e04-5367fee526cmr3351616e87.28.1726409919516;
        Sun, 15 Sep 2024 07:18:39 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-5-228-117-203.ip.moscow.rt.ru. [5.228.117.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870968c6sm568967e87.125.2024.09.15.07.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 07:18:39 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [RESEND PATCH v4 0/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Sun, 15 Sep 2024 17:18:30 +0300
Message-Id: <20240915141831.2809208-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_071841_910963_5CD142FD 
X-CRM114-Status: GOOD (  10.45  )
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

SSB3YW50ZWQgdG8ga2luZGx5IHJlbWluZCB5b3UgYWJvdXQgbXkgcGF0Y2ggc3VibWlzc2lvbi4g
SnVzdCB0byBjbGFyaWZ5LApteSBwYXRjaCBkb2Vzbid0IGludHJvZHVjZSBhIG5ldyBkcml2ZXIu
IENvbXBhdGlibGUgZmllbGRzIGZyb20KdGksdGNhbjEwNHgtY2FuLnlhbWwgaXMgdXNlZCBieSB0
aGUgcGh5LWNhbi10cmFuc2NlaXZlci5jIGRyaXZlciwgd2hpY2ggaXMKYWxyZWFkeSBwYXJ0IG9m
IHRoZSBrZXJuZWwuIFRoZXJlIHdhcyBhbiBpc3N1ZSB3aXRoIG15IHByZXZpb3VzIGF0dGVtcHQg
dG8KcmVzZW5kIHRoaXMgcGF0Y2guIFBsZWFzZSBpZ25vcmUgaXQuCgpDb3VsZCB5b3UgcGxlYXNl
IHJldmlldyBpdCB3aGVuIHlvdSBoYXZlIGEgY2hhbmNlPwoKSW4gdGhpcyB2NCwgSSBhZGRyZXNz
ZWQgS3J6eXN6dG9mJ3MgY29tbWVudHMgYW5kIGluY29ycG9yYXRlZCB0aGUgY2hhbmdlbG9nCmFu
ZCB0YWcgcmVjZWl2ZWQgZnJvbSBDb25vci4KClRoYW5rIHlvdSBmb3IgeW91ciB0aW1lIQoKdjM6
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA4MDgxOTE3MzUuMTQ4MzU3Mi0xLWlsb3Jk
YXNoMDJAZ21haWwuY29tLwoKdjI6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA4MDcx
ODAyMTAuMTMzNDcyNC0xLWlsb3JkYXNoMDJAZ21haWwuY29tLwoKdjE6Cmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNDA3MTgyMTAzMjIuMzc0OTItMS1pbG9yZGFzaDAyQGdtYWlsLmNvbS8K
CkZpcnN0IG9mIGFsbCwgSSB3YW50IHRvIGFwb2xvZ2l6ZSBmb3IgdGhlIHNpbGx5IG1pc3Rha2Vz
IGluIG15IHBhdGNoCnByZXBhcmF0aW9uLiBJIHdhc27igJl0IGF3YXJlIG9mIHRoZSBuZWVkIHRv
IGluY2x1ZGUgdGhlIGNoYW5nZWxvZyBhbmQKcmVjZWl2ZWQgdGFncyBpbiBuZXcgdmVyc2lvbnMu
IFRoaXMgaXMgbXkgZmlyc3QgcGF0Y2ggaW4gdGhlIGtlcm5lbCwKYW5kIEkgYW0gdmVyeSBleGNp
dGVkIGFib3V0IGl0LiBJIGFtIGVhZ2VyIHRvIGdhaW4gZXhwZXJpZW5jZSBpbiB3b3JraW5nCm9u
IEZPU1MuCgpJIGdyZWF0bHkgYXBwcmVjaWF0ZSBhbGwgeW91ciBmZWVkYmFjaywgYW5kIEkgd2ls
bCBkbyBteSBiZXN0IHRvIGFkZHJlc3MKYW5kIGZpeCBhbnkgaXNzdWVzLgoKSWx5YSBPcmF6b3Yg
KDEpOgogIGR0LWJpbmRpbmdzOiBwaHk6IHRpLHRjYW4xMDR4LWNhbjogRG9jdW1lbnQgTWljcm9j
aGlwIEFUQTY1NjEKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGksdGNhbjEwNHgtY2Fu
LnlhbWwgICAgfCAxMyArKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiA4NzJjZjI4YjhkZjljNWMzYTFlNzFh
ODhlZTc1MGRmN2MyNTEzOTcxCi0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
