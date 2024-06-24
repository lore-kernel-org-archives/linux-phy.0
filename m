Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4992BC2BD09
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 11:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1aEoW/Ex6qTeRb7k8WgB+SsxnP6gGX65T2Q8+b3HKk=; b=F1ObxzBdzwkmcS
	8k/SSWNaUWQjLFcohbR3q3NZ7K2eh311iiSpphEIQrtGwTZp9aeywMMYl9c7v/7fHQOnoIp+XqJ+n
	PDyFKA1qaWQQZwlF1LA6/ZbPwZVylkmVgnrB3SjValiwAnzeHDBHaq+np+28TJuO9z1d3jDo9lqt/
	53qq054hrRnO7xBWmXfkCQVvuv2ynnRpB3Jf3LHfpmAJFSLEMc1aREwrnv18i7kFAzk8eQCvIHqd4
	98NMRoPvkL76mXAXrsmx9MIUEH4zRGu5y5GO4tPK2ctwPh9Ex0u/iaBf1WwYWDseuxkDBKOnPgfRn
	nhuTXeHEhP3LURIzG5UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhnt-0000000Ga5W-3PTv;
	Mon, 24 Jun 2024 11:24:09 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLhnq-0000000Ga3N-1zVp
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 11:24:07 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5baf982f56dso2080271eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Jun 2024 04:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228245; x=1719833045; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/uG0pk/rOzEYyf9kgjbXb58wu9autIPkbU8eM8hrs0=;
        b=se5vtqOg5yaECyP1hbJfYwla1CYujMJNuZo8KL75mr9DVSixBf7+CpO7iA09xp8NFH
         mkcq+q8AjwwxYXcUoBCaTRKkeFiYj7tiE4W8XcdGIZxzmzZLsosrrlI27e4WeiorrH2o
         sCX3MAyOnReYu1Z6j037RNM+Kwzs2Lpzd54/9c6EN1GnkEc5dc2QHIXLenhhYZ0nNkVt
         CxxyDOA/82i8rs+e0TjFYpgG550G/tlxIqRY3ieyQ8pM5I9Xg3ZhYdY4Ei43S4DNmWM+
         FamibWb6Cj9R/TQVw3TFj+n3uEdJZ/+PgMamVXLvgSXie4eBO1BBmxUNSPCYh+FFCUzc
         hHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228245; x=1719833045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/uG0pk/rOzEYyf9kgjbXb58wu9autIPkbU8eM8hrs0=;
        b=wkXsWK4Lf+7eveG5+OWXtte4vooFZucYM4TZSpBZHaKKDOOxCAH3/AEQqkvHFSz+op
         F51lG8n4NwH+bQgYwuBM4A4yABTeD94zpsbtzxMX3I1TIZHRT3VlA2jygT1u6d6e7jit
         jekui5GRcWVDXG3Wgb5OjFyMe11ql3KnXLuzfE+kFJl0Z9eheyRNaEUUDDPHs+iVy6Yu
         fEUfa2BYXFko1/NYbBPXY5AhGOFdji4ESzGv1OfD59FAUbboMapUwSTViy+2nIdAWXz5
         sYW6GYjFax10HHj7H16oFORxvBoZwwjXgeQ9DKIt0xFd2CmXh8O1cvcYEBJd5J5rYxWe
         9YtA==
X-Forwarded-Encrypted: i=1; AJvYcCUrMYZT/v76xAdCu1xPGtZI+4YR1jVmgZbV/kL0+NjcWK7v8vCpHbgGZDj87iWetzIXd2u4QNxbrulNXo8i+vBsV7q5l9L95AoO8HgDqA==
X-Gm-Message-State: AOJu0Ywv0YgkekXNHBgGuf8IYaKeDz4FnUSFlatxAGbf/fI4kyAZH2MN
	ryaePjfNLeaMIoORLovXbI9LJnZm+WzytRQ/AUQf8tSp39n50h8OkqAL8RMIIymGt/y36qYSR8W
	bsk1K5W0jTlUuaQNqZeZpkdNCHWt7lWv8NC5ugw==
X-Google-Smtp-Source: AGHT+IHMLqDC2rTXhVuW4+7eVR8LzUhLBmZIQgM3baPjvR31e95ip2NrsiCp0QKxJlc/jUGwGVTWHwCoML9aCJwp+iA=
X-Received: by 2002:a4a:85c1:0:b0:5bb:e55:56a8 with SMTP id
 006d021491bc7-5c1eec84869mr3670014eaf.0.1719228245151; Mon, 24 Jun 2024
 04:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:23:54 +0100
Message-ID: <CADrjBPoP_ZXyNrbS7vwVOqZTBqp3Brg7zigYukf-p1jX4AtHCg@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] phy: exynos5-usbdrd: convert (phy) register access
 clock to clk_bulk
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
X-CRM114-CacheID: sfid-20240624_042406_573498_9CEE1200 
X-CRM114-Status: UNSURE (   8.98  )
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

SGkgQW5kcsOpCgpPbiBNb24sIDE3IEp1biAyMDI0IGF0IDE3OjQ1LCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEluIHByZXBhcmF0aW9uIGZvciBz
dXBwb3J0IGZvciBhZGRpdGlvbmFsIHBsYXRmb3JtcywgY29udmVydCB0aGUgcGh5Cj4gcmVnaXN0
ZXIgYWNjZXNzIGNsb2NrIHRvIHVzaW5nIHRoZSBjbGtfYnVsayBpbnRlcmZhY2VzLgo+Cj4gTmV3
ZXIgU29DcyBsaWtlIEdvb2dsZSBUZW5zb3IgZ3MxMDEgcmVxdWlyZSBhZGRpdGlvbmFsIGNsb2Nr
cyBmb3IKPiBhY2Nlc3MgdG8gYWRkaXRpb25hbCAoZGlmZmVyZW50KSByZWdpc3RlciBhcmVhcyAo
UEhZLCBQTUEsIFBDUyksIGFuZAo+IGNvbnZlcnRpbmcgdG8gY2xrX2J1bGsgc2ltcGxpZmllcyBh
ZGRpdGlvbiBvZiB0aG9zZSBleHRyYSBjbG9ja3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kg
RHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+Cj4gLS0tCgpSZXZpZXdlZC1ieTog
IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KYW5kClRlc3RlZC1ieTog
UGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKVGVzdGVkIHVzaW5nIG15
IFBpeGVsIDYgcHJvIGRldmljZS4gVVNCIGNvbWVzIHVwIGFuZCBpdCBpcyBwb3NzaWJsZSB0bwp1
c2UgYWRiIGZyb20gdGhlIGhvc3QgY29tcHV0ZXIgdG8gdGhlIHBob25lLgoKcmVnYXJkcywKClBl
dGVyCgpbLi5dCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
