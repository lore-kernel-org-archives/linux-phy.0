Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 602D6EEEC08
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 04:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNFZhbQPWvwwvzlOmDZyJGoAY+9pJI8LC1jA7zJfumY=; b=KflyZeuMt1flN/
	PDE/vAWU5A7DW8/zazYmpXIMTttlj8q8shxx925oeU9qvEg5hcI/fe4HShNBkkNx2+UXeoH5Ni4ov
	P8Voq6UksmaEYxz4TMPy8bK00Z4yZqUFT6NyBX+9glyG7Bx9oWIQ1xZlamajr67CLbaaGgqofMkaV
	8y4WVIaiUHtz3SAOWikb+rmZpCLwqCDeiz1dewFY+zUSxjrC4+U3vxCabqZoiQL3iLS8r2iXImCxi
	7ZdX4j20pycLxNVGfxHOByNu+brYZWk2HnOSYRm43upRo+xBPJk0NMrQngH4lsRY9wLBHFXPg4IfK
	KroNzMcQPFPzOmmQe9fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soyCB-0000000EvXa-3iDj;
	Fri, 13 Sep 2024 04:46:11 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soyC6-0000000EvWj-3YtA
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 04:46:10 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5bf01bdaff0so577809a12.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Sep 2024 21:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726202764; x=1726807564; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dvjMZVYW6cr2cJF7xCG4RzHVN0FtN4ELeVl4OFEmIT0=;
        b=ZJEiN/waE3aSqHaXW0YJ7R7IJe7xFaz7whpPHfD6It6MpNxY/VSsJJtSpHzgTkKukY
         DrBnnFcVUcwVmnqPzEen3ya912y6HAhM2DY4XL+P6XTHhOgBElOT1dV3IvXN81U7lQIq
         rxhUxHP8tWo48tsmUJPui7zLS5z79+n3S13HubYOZTdKrIyYb32FA1LfXVxzadCb7ft2
         sDzugrztaVlq9T0nO22WuH1FqYlWbZSV015HXw05ygKVxElFKIvFAAht99X09OdQ5ft1
         yI2lBZZvdSrAR7bFOtxYsOhKpTHg49LINw7F+cQW8ezkyjLVaA4MJ2+2CZ2TcZDOP1sB
         Z0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726202764; x=1726807564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dvjMZVYW6cr2cJF7xCG4RzHVN0FtN4ELeVl4OFEmIT0=;
        b=T+QSoTvyTYZewyBe/W4pz8fZiq/FAoc9tZ5F+zTmc8fMaFxonfectGR9djwgAL7CtV
         6LHaaAJxQi3AoHDViyjMaqV5hNlYJ6huYYg8Q3g+K52Cr7HAuy2DlhoohLu78mR6EwWo
         LPIxjohY7HZpeFXVFyyNOWcADFt/tlOfuZuwwMpCJztpqVQGcclv1FtarcOGDLLNrk7x
         bTFBsdJezp2j5/DeQNSVWzySpQbeJqWI3lWtssgC7q8IzrFUdVVQWIRBjufvCbOjmh3n
         pUBDsr8jf65oZ3zJOEgO+ED5A++a9CYXEvWE0qtrJeuxpAlDq6GqRN+MXy+n4ld34ok4
         XDJA==
X-Forwarded-Encrypted: i=1; AJvYcCUy6BKmE+EF7WqxiVKtD83vz0sedlzvbnnCBZvbj6PvvZGYX/dka+OQPsHGYlmgle/LxcGo5uNG1lQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9+75APZtUJHhYDD/0VhLLlYvO72KO+qsyUPScgUQmKOTfmltE
	P8ktrO1uM+TJrdjFfgS4kR2g2609JB36EMWn8AuqT6/lxKmZhKKG
X-Google-Smtp-Source: AGHT+IFfaAVy51H5u5apm3I4pEWfaWlpFB7z2h8ZgkGGlzxqpBzd+BWSTMcvBDQo5Qs5g+lQ/sfDhQ==
X-Received: by 2002:a05:6402:2b8f:b0:5c4:8ac:ff80 with SMTP id 4fb4d7f45d1cf-5c41e2ada81mr1139349a12.33.1726202764181;
        Thu, 12 Sep 2024 21:46:04 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3ebd76fc4sm7303468a12.78.2024.09.12.21.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 21:46:03 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: phy: bcm-ns-usb2-phy: drop deprecated variant
Date: Fri, 13 Sep 2024 06:45:56 +0200
Message-Id: <20240913044557.28315-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_214606_918001_53468662 
X-CRM114-Status: GOOD (  10.50  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIG9sZCBiaW5kaW5n
IHZhcmlhbnQgKHRoZSBvbmUgY292ZXJpbmcgd2hvbGUgRE1VIGJsb2NrKSB3YXMKZGVwcmVjYXRl
ZCAzIHllYXJzIGFnby4gTGludXgga2VybmVsIHdhcyB3YXJuaW5nIHdoZW4gdXNpbmcgaXQgZm9y
CnNpbWlsYXIgYW1vdW50IG9mIHRpbWUuCgpUaGVyZSBhcmVuJ3QgYW55IGtub3duIE5vcnRoc3Rh
ciBkZXZpY2VzIHdpdGggYm9vdGxvYWRlciBwcm92aWRpbmcgRFQgdG8Kb3BlcmF0aW5nIHN5c3Rl
bS4gQWN0dWFsbHkgT3BlbldydCBzZWVtcyB0byBiZSB0aGUgb25seSBwcm9qZWN0IHVzaW5nCnRo
aXMgYmluZGluZyBhbmQgaXQgYWx3YXlzIGFwcGVuZHMgRFRCIHRvIGtlcm5lbC4gSXQgaGFzIHN3
aXRjaGVkIHRvIHRoZQpub24tZGVwcmVjYXRlZCBiaW5kaW5nIHllYXJzIGFnby4KCkdpdmVuIHRo
ZXJlIGlzIGNsb3NlIHRvIHplcm8gY2hhbmNlIHRoaXMgYnJlYWtzIGFueW9uZSdzIHNldHVwIGl0
IHNob3VsZAptb3JlIHRoYW4gc2FmZSB0byBkcm9wIHRoaXMgYmluZGluZyB2YXJpYW50IGFmdGVy
IDMgeWVhcnMuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2ku
cGw+Ci0tLQogLi4uL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbCAgICAgICAgIHwg
MTkgKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnlhbWwKaW5kZXggNDI2MTAxNTMwYTIxLi5k
NzJjMDJhYjU1YWUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvYmNtLW5zLXVzYjItcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbApAQCAtMTgsMTYgKzE4LDggQEAgcHJv
cGVydGllczoKICAgICBjb25zdDogYnJjbSxucy11c2IyLXBoeQogCiAgIHJlZzoKLSAgICBhbnlP
ZjoKLSAgICAgIC0gbWF4SXRlbXM6IDEKLSAgICAgICAgZGVzY3JpcHRpb246IFBIWSBjb250cm9s
IHJlZ2lzdGVyCi0gICAgICAtIG1heEl0ZW1zOiAxCi0gICAgICAgIGRlc2NyaXB0aW9uOiBpb21l
bSBhZGRyZXNzIHJhbmdlIG9mIERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5pdCkKLSAgICAgICAg
ZGVwcmVjYXRlZDogdHJ1ZQotCi0gIHJlZy1uYW1lczoKLSAgICBpdGVtczoKLSAgICAgIC0gY29u
c3Q6IGRtdQorICAgIG1heEl0ZW1zOiAxCisgICAgZGVzY3JpcHRpb246IFBIWSBjb250cm9sIHJl
Z2lzdGVyCiAKICAgYnJjbSxzeXNjb24tY2xrc2V0OgogICAgIGRlc2NyaXB0aW9uOiBwaGFuZGxl
IHRvIHN5c2NvbiBmb3IgY2xrc2V0IHJlZ2lzdGVyCkBAIC01MCwxMiArNDIsNyBAQCByZXF1aXJl
ZDoKICAgLSBjbG9ja3MKICAgLSBjbG9jay1uYW1lcwogICAtICIjcGh5LWNlbGxzIgotCi1vbmVP
ZjoKLSAgLSByZXF1aXJlZDoKLSAgICAgIC0gYnJjbSxzeXNjb24tY2xrc2V0Ci0gIC0gcmVxdWly
ZWQ6Ci0gICAgICAtIHJlZy1uYW1lcworICAtIGJyY20sc3lzY29uLWNsa3NldAogCiBhZGRpdGlv
bmFsUHJvcGVydGllczogZmFsc2UKIAotLSAKMi4zNS4zCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
