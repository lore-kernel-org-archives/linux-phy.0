Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 918F6CCF9F8
	for <linux-phy@archiver.kernel.org>; Fri, 31 Oct 2025 12:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5pda3nSagbO5Td9h5V5xP9kNENbfmdkRFm3p4d13ZM=; b=xfsKB+QKIzNavS
	42PWoJkSJLkX9rDg+67Yel2Qv+N9jLJfqBRc5bt5RyCTAZ9vkNUR4Y6mdnFXqd+lCGzTZGC9qf4Kq
	gAI7oRmhKmnPCs4KB/K23/I2BvUhgVK2HNJ1agl/MuDtAGstfLO4sy+r2f3Or0o+9kekpOQUa4Bp7
	G8TD/LBzYA7WByLRkZqNRZV/yzf9j1TO66IjZTg6kjBLw0FdVXw+nBULAixc7cXakElHiTaiSH8vp
	79/mQrK1ZeYDcZ1i5PHD5/CuLmBblvWF6rb0c0XJQ1DsuEUJc3GRY7rl7ng8GG2wHpL1KIwZP9jw9
	YUXONydFcHNpN0aYbqNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEoY5-000000066XG-3mQi;
	Fri, 31 Oct 2025 12:48:09 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEoY3-000000066Wa-2VMD
	for linux-phy@lists.infradead.org;
	Fri, 31 Oct 2025 12:48:08 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-426fc536b5dso1411118f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 31 Oct 2025 05:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761914885; x=1762519685; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TMq2rs4attrXqSrcDi+nNC5MviqH/WzxTcqB5ovvwh0=;
        b=SCey4lY6EbJbWIyGoKYKnpcz2Te3rCZmmuogNh+1ZnJagGtS3CPUWX0ISTla8W5j60
         fQLP7YhtkCXNdvJDR0SNpvf1IZVKoyIfbxtOHYhAFrltMKh/oTD1O1kMgMyRas2JWd0Y
         4efzyOl9uPkjbppg0x01tOCLEwWeUgPjGh6KC2pj5YBxHIhJacEdQqAZOHS4mKaCf5z5
         56uZR35IQkaKPgpoqf2qlB4tmlFFWCnWBz680GP01+CdmE7D9m9Q+Cpb6O7JCWATq/3I
         Rx2OBbcRCy1CvmPhBcPAvQYgn0jMFwD2jNVXlUjm00r1O1jVOSOmF0QB8qrq88SVNms/
         5/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914885; x=1762519685;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TMq2rs4attrXqSrcDi+nNC5MviqH/WzxTcqB5ovvwh0=;
        b=N5fMY4z7v6UqBHlarFAqGYavjTijD+6ofvMgbmf/+fFBmLUQrsAmvfZbtxVn1VEU9e
         QCS1lghYEzEdp72qjuPdGh6qkHa2SQ23ez26PRaASnFFsToz71GN+Df5GGJuEXGoIVpY
         QBT3D4xvSXHBgIMhsG08VoTpinNH0GXrrT0sojV2F5jbSasbIzrqjeGe0/4PiwyLUgG+
         eKN7vu8J5CGA1S210b1i974zubiofgOLOLSEmn0+1h00vZNcJsB/0m8IhEasMEQpps1x
         re1fDJURT0uDyt9hcZC/qtomlaLalat6B8QKJjOYUemq9NBTnrdCe+UcsSjzmRyCuYKl
         ROGg==
X-Forwarded-Encrypted: i=1; AJvYcCVCY+g7R1peSJ9R1kEGZy/ywOECBaYIf/28V6UHNMuAbGegYoix0vJUfY4yR0SgMfXHGXKL5SJsdBE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxU+YtsisZ7xO8MOtdqkwVpXICemPyrBoYhOXa0rAir/1Kex9EI
	eb0hx2ER3pAhZaA1mVTmRCIap7PypfBMR89Q6v+/SK+H1nlFBFaWKxGv
X-Gm-Gg: ASbGncsWOT4X6+LKu0jBG1wJPDVTupubWow+cT+pCsDVpOcd6zhtVkN20C6udM3E4PW
	78q9fmfdkGjaPHAO7FCn6oP5/ls98cSoDJvQT+wf8xyJWf5ZLxoZPZUbG6XHh4H1WTqyi34CKJ2
	cEBKLY6EsBZNlhWYgO/JBNmUnSB9H7pH0vPIB3sBmsUvUPKV25e6r406VgWqCGLGNc2zHFVfoUA
	JnsCqjzQsAEwGpiE1HmC5lgn2zcQk3xOvvN3YxsuY19bd4ptSK0fjVzs9fnlEHChk/isJHbNY/b
	OSFlxUetP4UuwbkYzX1xfzIKNaMAaA9qG3a3oxaednY3I8P0jU4m3GeOMnKpGtSYvHnKu0Bg3dY
	0S619xJMDwG/ELMkQdw3KKNxllSKLyWXl0ih270uirOa3owdTkT+X971/rHI/pKPzHF+p2eIEqd
	ims0u5MOKlFg==
X-Google-Smtp-Source: AGHT+IEGBlLHx6Azb37x52GbpGa6RG/g5vSRbK4hfdeJ/a0ZQQ9d2uxDnQSAO6dG0F3Q2RqJaRySOA==
X-Received: by 2002:a05:6000:2301:b0:429:8d46:fc40 with SMTP id ffacd0b85a97d-429bd682dd2mr2975029f8f.25.1761914885258;
        Fri, 31 Oct 2025 05:48:05 -0700 (PDT)
Received: from [192.168.20.170] ([93.89.165.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13ebfe8sm3428499f8f.35.2025.10.31.05.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 05:48:04 -0700 (PDT)
Message-ID: <5dd8e39e-6fa4-43c0-96b0-d64a03caf3af@gmail.com>
Date: Fri, 31 Oct 2025 13:48:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: sparx5-serdes: make it selectable for
 ARCH_LAN969X
Content-Language: hu
To: Robert Marko <robert.marko@sartura.hr>, vkoul@kernel.org,
 kishon@kernel.org, geert+renesas@glider.be, herve.codina@bootlin.com,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr, Daniel Machon <daniel.machon@microchip.com>
References: <20251031121834.665987-1-robert.marko@sartura.hr>
From: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <20251031121834.665987-1-robert.marko@sartura.hr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_054807_716034_2B788C6F 
X-CRM114-Status: GOOD (  14.36  )
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

SGkgUm9iZXJ0LAoKMjAyNS4gMTAuIDMxLiAxMzoxOCBrZWx0ZXrDqXNzZWwsIFJvYmVydCBNYXJr
byDDrXJ0YToKPiBMQU45Njl4IHVzZXMgdGhlIFNwYXJYLTUgU0VSREVTIGRyaXZlciwgc28gbWFr
ZSBpdCBzZWxlY3RhYmxlIGZvcgo+IEFSQ0hfTEFOOTY5WC4KPiAKPiBSZXZpZXdlZC1ieTogRGFu
aWVsIE1hY2hvbiA8ZGFuaWVsLm1hY2hvbkBtaWNyb2NoaXAuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFJvYmVydCBNYXJrbyA8cm9iZXJ0Lm1hcmtvQHNhcnR1cmEuaHI+Cj4gLS0tCj4gQ2hhbmdlcyBp
biB2MjoKPiAqIFJlYmFzZSBvbnRvIG5leHQtMjAyNTEwMzEKPiAqIEFkZCBSZXZpZXdlZC1ieSB0
YWcKPiAKPiAgZHJpdmVycy9waHkvbWljcm9jaGlwL0tjb25maWcgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9taWNyb2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L21pY3JvY2hpcC9LY29u
ZmlnCj4gaW5kZXggMmYwMDQ1ZTg3NGFjLi4yZTZkMTIyNDcxMWUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvbWljcm9jaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3BoeS9taWNyb2NoaXAv
S2NvbmZpZwo+IEBAIC02LDcgKzYsNyBAQAo+ICBjb25maWcgUEhZX1NQQVJYNV9TRVJERVMKPiAg
CXRyaXN0YXRlICJNaWNyb2NoaXAgU3Bhcng1IFNlckRlcyBQSFkgZHJpdmVyIgo+ICAJc2VsZWN0
IEdFTkVSSUNfUEhZCj4gLQlkZXBlbmRzIG9uIEFSQ0hfU1BBUlg1IHx8IENPTVBJTEVfVEVTVAo+
ICsJZGVwZW5kcyBvbiBBUkNIX1NQQVJYNSB8fCBBUkNIX0xBTjk2OVggfHwgQ09NUElMRV9URVNU
Cj4gIAlkZXBlbmRzIG9uIE9GCj4gIAlkZXBlbmRzIG9uIEhBU19JT01FTQo+ICAJaGVscAoKVGhp
cyBwcm9iYWJseSBkZXNlcnZlcyBhICdGaXhlcycgdGFnLCBhcyBpdCBmaXhlcyB0aGUgZm9sbG93
aW5nIHdhcm5pbmc6CgogICAgV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRl
Y3RlZCBmb3IgUEhZX1NQQVJYNV9TRVJERVMKICAgICAgRGVwZW5kcyBvbiBbbl06IChBUkNIX1NQ
QVJYNSBbPW5dIHx8IENPTVBJTEVfVEVTVCBbPW5dKSAmJiBPRiBbPXldICYmIEhBU19JT01FTSBb
PXldCiAgICAgIFNlbGVjdGVkIGJ5IFt5XToKICAgICAgLSBTUEFSWDVfU1dJVENIIFs9eV0gJiYg
TkVUREVWSUNFUyBbPXldICYmIEVUSEVSTkVUIFs9eV0gJiYgTkVUX1ZFTkRPUl9NSUNST0NISVAg
Wz15XSAmJiBORVRfU1dJVENIREVWIFs9eV0gJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0YgWz15XSAm
JiAoQVJDSF9TUEFSWDUgWz1uXSB8fCBBUkNIX0xBTjk2OVggWz15XSB8fCBDT01QSUxFX1RFU1Qg
Wz1uXSkgJiYgUFRQXzE1ODhfQ0xPQ0tfT1BUSU9OQUwgWz15XSAmJiAoQlJJREdFIFs9eV0gfHwg
QlJJREdFIFs9eV09biBbPW5dKQoKSSBoYXZlIHNlZW4gaXQgb24gdjYuMTgtcmMzLCBhbmQgaXQg
aXMgY2F1c2VkIGJ5IGNvbW1pdCA2Mjg3OTgyYWE1NDkgKCJuZXQ6IGV0aGVybmV0OgptaWNyb2No
aXA6IHNwYXJ4NTogbWFrZSBpdCBzZWxlY3RhYmxlIGZvciBBUkNIX0xBTjk2OVgiKS4KClRlc3Rl
ZC1ieTogR2Fib3IgSnVob3MgPGo0Zzh5N0BnbWFpbC5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
