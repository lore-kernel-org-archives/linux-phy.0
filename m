Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6C2C021B0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 10:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w0XR4z2u1wR9gzp0hyfQVvHZ2aIm2N6xfo4LAC8FAqY=; b=QiXNsnZ2c4gd4U
	vKo9bIQDaVTmRpFiZjvMZLA7VxuWYLHBJ61TJBL+JSJzjrgwdHKsVBfPpgr53CUC2RLNc9IN1T6wx
	P5EcUjCT6FIruzKIfUu4BJBO9WdoIK4hFMzZt3mTEqzw0c32bAPx2T7TEuXM/z8tdW6pQrgU/cu3B
	9ObMolAvrUk4w7y8r8ZBbK8Z77YA9GDFqhPwPZ1nAR63u+L8lDSOsgohH8ypqR2NCA0rk85fR8Odu
	MltI4Lsq9QJzLiChkIWuOLxq+e5+DHijgRJSK8AkWGzbiDIjPJIjwzefVwKmeejqBxTRkzgX1QP/g
	RVRSa/YCvdjRqp6uF69g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkhjZ-0000000CGdn-3b0K;
	Wed, 19 Feb 2025 10:55:17 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkhii-0000000CGLb-2cX8
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 10:54:25 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-220bfdfb3f4so132620875ad.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 02:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739962463; x=1740567263; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bBVwkgLFU9CUqCFGNHENMJIJXnYpb7KPQnJUp/4i6C8=;
        b=dLraopQfZoFCHhZCPNtzJFQpP86HzWw4hRhsmZvIc6Yr8iU9MH8fKicatXkg3iak6Z
         Kpgn+7yUxwxl7lP64WCnYWax8+75/yo2DIwGo7qpG7AY78F6jvWcuyrW0rMe+GPcsisG
         zjlxqw5wf+AOlaYjYq7Bk77cL9lN/KevFudHmu0TYm/MGdHL0xELn8NonaNcZfaolvbH
         W+mv/6V6+85wRj5fkzLqGYbotllZpJo0bqMaznpYdpFtQXYbTNi1cNE4nkSL4vOoKS2t
         cU8zH7xMTnkKKDje7sWXE+CMYTuT+XUoEPbK31LVOsC8pRDg7O6RbQd3m8aBVP5ZCC/P
         dO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739962463; x=1740567263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBVwkgLFU9CUqCFGNHENMJIJXnYpb7KPQnJUp/4i6C8=;
        b=KTPwvriNmdJtvmVOXeKd05m+XgMyRcn/gexGlqHmHaMRSu+ZTv354uqbuKoejMGor1
         vdWc0GWfr15+1xxp3KZikV1JqIx2vFjX35dtSmSuBqB13YQolTYB5lLz7etAL4NRNwfu
         i19BwKM93CHoGwVokyY6CpBloXN3nLcyKybCi8aNIcSEWyIjW5AAGdh+blhPKjpelUb5
         uRZEoTZOEE1+Jrz9cBH3QERCW5FkGnsaQfrJQLdXP0JtT7pK1J7tv2DZwuYRjVPcEM07
         RdCm0zNzvXnrgZnBDXMOHpVAz4pS6OWRjpN6kOLpeqsp2UODn7VVS70v2A99ZTkR7oI2
         1xyw==
X-Forwarded-Encrypted: i=1; AJvYcCUixJn3XG+naJWbGXxPPJIBERXZH8Og9uypkzR2iLdFh0QE65fMtFXbp2NChO2wLa1odLvr2SuT4mM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxiv/P8DaarHeVFgIxPvwDPq8N46nQDY2Ig6xpghdfRvzjDL+A6
	RyANRUb8sYSs7f64Ncxaae/tsrXu9Zli918rcUtkbpJoBhlXBa6b
X-Gm-Gg: ASbGnctUV6WKXMbyALwQgcWI5htqvUCFLnPas+NPlC0NAalELpJENsdRBQBCncZC7CU
	W15KbKW+1BWZ+UGxC+Amj+j7NfuDp0QA5pz4rKJB3U9pEN/dvnHmc7ufcSBzKZ9pC9j41JgDqPQ
	Vc8WDrcOQ4NituU6sGy7IFJPmYJiXHNV7oWZgY+i2bGdF92lsLJi7k3p0CVCxRMPhE17pCBEY70
	aFtpRJhBrRv+WzL7ZLr5XMuoM7XNLuA9u7dcA3ECsl1qrrKl6nSCfaKSgqPvj0QW4fEVMifrNgJ
	h6kpUJ/qXPRR9y6dRKVV1Hd5sxxNIy9IeBmnBw9RTmaFpw==
X-Google-Smtp-Source: AGHT+IGbaYzXjVA+2aK1N4bUqfgQc4xlCKQkoojFuNuiykcWUGludHj1DqcSrBY2X3ZzG6N2xYTCfw==
X-Received: by 2002:a17:902:d4c1:b0:216:6c77:7bbb with SMTP id d9443c01a7336-2217086dc59mr43604335ad.17.1739962463296;
        Wed, 19 Feb 2025 02:54:23 -0800 (PST)
Received: from mi-ThinkStation-K.mioffice.cn ([43.224.245.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d5364503sm101827285ad.80.2025.02.19.02.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 02:54:22 -0800 (PST)
From: Chongchong Gu <chongchonggu21@gmail.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	aford173@gmail.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	guchongchong <guchongchong@xiaomi.com>
Subject: [PATCH v3 0/1] phy: freescale: limit div value in FIELD_PREP()
Date: Wed, 19 Feb 2025 18:54:10 +0800
Message-ID: <cover.1739961770.git.guchongchong@xiaomi.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_025424_662220_9CB0ED4E 
X-CRM114-Status: GOOD (  10.08  )
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

RnJvbTogZ3VjaG9uZ2Nob25nIDxndWNob25nY2hvbmdAeGlhb21pLmNvbT4KCkluIGZzbF9zYW1z
dW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQsIHRoZSB2YXJpYWJsZSBuYW1lZApk
aXYgYmVjb21lcyA0IGFmdGVyIGxvb3AuIEl0IG11c3QgbGVzcyB0aGFuIDQgaW4gZnVuY3Rpb24g
bmFtZWQKRklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KS4KCkEgd2F5IHRvIHJlcHJv
ZHVjZSB3aGVuIHJ1biB0aGUgZm9sbG93aW5nIHNoZWxsIGNvbW1hbmQKbWFrZSBBUkNIPWFybTY0
IENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtIGRlZmNvbmZpZwptYWtlIEFSQ0g9YXJt
NjQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0gLWo0CgpUaGUgZXJyb3IgbG9nIGlz
IGZvbGxvd2luZzoKJycnCkluIGZpbGUgaW5jbHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjoKSW4g
ZnVuY3Rpb24g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldOKA
mSwKICAgIGlubGluZWQgZnJvbSDigJhmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmXigJkg
YXQgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmM6NDY5OjI6Ci4v
Li9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDi
gJhfX2NvbXBpbGV0aW1lX2Fzc2VydF81MzjigJkgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJy
b3I6IEZJRUxEX1BSRVA6IHZhbHVlIHRvbyBsYXJnZSBmb3IgdGhlIGZpZWxkCgouLi4KCmRyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOjM0NDo5OiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYRklFTERfUFJFUOKAmQogIDM0NCB8ICB3cml0ZWIoRklFTERf
UFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwog
ICAgICB8ICAgICAgICAgXn5+fn5+fn5+fgptYWtlWzVdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUu
YnVpbGQ6MjA377yaZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLm9d
IGVycm9yIDEKJycnCgpjaGFuZ2VzIGluIHYzCiAtIFNpbXBsaWZpZWQgY29kZSBzdHJ1Y3R1cmUK
CmNoYW5nZXMgaW4gdjIKIC0gbW9kaWZ5IHRoZSBjb21taXQgbWVzc2FnZQoKZ3VjaG9uZ2Nob25n
ICgxKToKICBwaHk6IGZyZWVzY2FsZTogbGltaXQgZGl2IHZhbHVlIGluIEZJRUxEX1BSRVAoKQoK
IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgotLSAKMi40OC4xCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
