Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14977C2BD05
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzYCrk5WqFxsks2gsN7ACuDuJ/TZ0pVhJ8RVLhM4tAI=; b=205eM2E7NODuWA
	zhl6g7wiDpo1hRINZgqDvhGaMhWudakY/v9dTyqV52M5TsLD9f1taKG0Mwk0ybPSKXL0kuJW/GAsd
	ntGiv9LRnFU4OkXaemrVjbA0PFJV4r6E5CT8tnxZi8BCj+Hsopr+QukyCMJMwcevnsaLG8Hz7b6aN
	sWcpjVFFl7VsjXkhaj2HB3cmoMdBzbIl1htOTjKYGj32k8VA87ujk823VxwTF70+TpAglPxiantk5
	BWoeBogo81QedAw6DI7RRiRLHGf3szhzEos+3H1Jm9P52GJdE60/1KoP7Ole5aenlB6bkZxXPUEST
	2cFItbTPK1wsGFfMQYOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhe7-0000000GY2A-1qzq;
	Mon, 24 Jun 2024 11:14:03 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhe3-0000000GY1L-3tEJ
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:14:01 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5c1adbcaad3so1877972eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719227638; x=1719832438; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HEzwQY70dS5/4zaR7wFnTP3jHuIxxfgJgjvsBN94sGk=;
        b=rC+4gKNYgjhqv7QqcSU3sB+Sd0BSOtwHLZKC74JHqyM+WH3eq4FavHmlRNaGBNx0bw
         POZmh9D4PydOoLvlFvGh13EWXT6btGNizuB8IbLE4hr3butnJoW5n1jOxce7I2gE7WID
         1JQHLjAoRI4npjZa0m11jGpZl2Qd7hMWroo0lzksNb2nlDFlj+cH4QIxZQ0tyYbHIDxo
         fuyPJEC8uk3h/cov+NC4BouD+7T0jOvU8blGRpQhnxdYlvhnG1+1FpLdze1DmizETINJ
         nT6th90iXdFwCxarpW0aGrr+nX78cKMebD/UGwEo2xoSWbadBVQz02oKZStIZOcXVRmt
         EYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719227638; x=1719832438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HEzwQY70dS5/4zaR7wFnTP3jHuIxxfgJgjvsBN94sGk=;
        b=hAdIEb0mdrb1iLTBUjOAv8cbJFILVfHeXaooMpCDfNwrQQYgcNKx+OZYrMnnBnjHKd
         9NSI2wTIwBjz0tiDP3fp44lyeMDb0L1iq3JJ65UxMF9Ja5cWu+Jvv0EqgDgzJ/fId6Ma
         McDRz6sl1Oknar1i7wYTXHiEcw/lCk4F/eFdxCmC4z6cvLytzkYkUE9J4QLGedMn30Z2
         cyYifxGC7rg9JCHOJ4KlTDuSI7hQmMHlhOtv+BffzOLfel20KCaeGsOO4UgAbgAIbS6S
         ieYVdQNKciHiUrHmXZzuJztf6wQ3762c7uyr4S5DxL1wr0J1PwbLRZ1bDDtKl929OmTQ
         b9fg==
X-Forwarded-Encrypted: i=1; AJvYcCUk3kjgLN5idrV5edsHxhgWNmKRS1NJ5BQ3TtxQ0fHb4lYlrE49+BZpQ64g+aa03rt6ayE6rbsCZMAeSGKXDfsjWHi1gado+qygtSpDhQ==
X-Gm-Message-State: AOJu0Yy26/Sis9QMAqq/tYaXnusKF89cuyQRkig4d2Kd3EzkwHJ9UPs2
	sVXW3SOOu1UyFU4nC66Q5c0awxefn1aV+J4kuj2GUkIcJiiNqngHzVh3e09JL4ZxZLMFeEvPdvB
	nqS14YxZV7ph30Dw3ZbC0DkgopvziLMIqFrJzWQ==
X-Google-Smtp-Source: AGHT+IHmVjPOuYszhXpUs8aOYTWZZ40BicRqOgwhbWDxIhWPU3UqwLQsR384Gfu6pdKECYYPVPugv6s8L7YYKqqAGTM=
X-Received: by 2002:a4a:240b:0:b0:5c1:e8e4:57a6 with SMTP id
 006d021491bc7-5c20ec4e865mr59179eaf.4.1719227638018; Mon, 24 Jun 2024
 04:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-1-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-1-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:13:46 +0100
Message-ID: <CADrjBPqLgvot6oG_Kx06okwOkzn=Kozjj5Upem3w4OhN-Z3hNA@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add gs101 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_041400_067996_814C2D78 
X-CRM114-Status: UNSURE (   8.01  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgQW5kcsOpLAoKT24gTW9uLCAxNyBKdW4gMjAyNCBhdCAxNzo0NSwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBBZGQgYSBkZWRpY2F0ZWQgZ29v
Z2xlLGdzMTAxLXVzYjMxZHJkLXBoeSBjb21wYXRpYmxlIGZvciBHb29nbGUgVGVuc29yCj4gZ3Mx
MDEgU29DLgo+Cj4gSXQgbmVlZHMgYWRkaXRpb25hbCBjbG9ja3MgZW5hYmxlZCBmb3IgcmVnaXN0
ZXIgYWNjZXNzLCBhbmQgYWRkaXRpb25hbAo+IG1lbW9yeSByZWdpb25zIChQQ1MgJiBQTUEpIGFy
ZSByZXF1aXJlZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgo+Cj4gSXQgYWxzbyByZXF1
aXJlcyB2YXJpb3VzIHBvd2VyIHN1cHBsaWVzIChyZWd1bGF0b3JzKSBmb3IgdGhlIGludGVybmFs
Cj4gY2lyY3VpdHJ5IHRvIHdvcmsuIFRoZSByZXF1aXJlZCB2b2x0YWdlcyBhcmU6Cj4gKiBwbGwt
c3VwcGx5OiAwLjg1Vgo+ICogZHZkZC11c2IyMC1zdXBwbHk6IDAuODVWICgrMTAlLCAtNyUpCj4g
KiB2ZGRoLXVzYjIwLXN1cHBseTogMS44ViAoKzEwJSwgLTclKQo+ICogdmRkMzMtdXNiMjAtc3Vw
cGx5OiAzLjNWICgrMTAlLCAtNyUpCj4gKiB2ZGRhLXVzYmRwLXN1cHBseTogMC44NVYKPiAqIHZk
ZGgtdXNiZHAtc3VwcGx5OiAxLjhWCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+Cj4gLS0tCgpSZXZpZXdlZC1ieTogIFBldGVyIEdy
aWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KCnJlZ2FyZHMsCgpQZXRlcgoKWy4uXQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
