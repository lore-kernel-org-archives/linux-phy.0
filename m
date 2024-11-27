Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF99D6ACC5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 12:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Za/Il2JvzBnK42z5jkf8rgxuO/NpPHnl5YdvMfo/nKA=; b=i4pQWikksjN6ud
	qKAP3P/nbJxDlizHyMkDq+fZEJDBFFoJJUe7TLtiZiGzO7Xn+G5MwqNfYC9pqiR/mfWXZG+P+UvvS
	yjTRqgF1SUU9eHAruVI41s4fSImFRlhzzGSSClQ+1VnSj/GL0YwYBRW7Plp9wICSNP45iwK6E1gr4
	Dm3Qq/dECdKqXepu2AshO9lqa6eZj3f1U9MK5+FBSdbfcJSI0P2ksS14mSPQQa/dEucLfzsL7Hx+l
	+8Esf6xUqLPq7YsqyYM2Niz45Ti7PdLQ7I4agkm+WIODvdwZIsRkKgUeehVzZsAN1IxWRw3tqzyCZ
	IvSJAAsL9IGhbvG82/PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGGoo-0000000D5g7-16Jt;
	Wed, 27 Nov 2024 12:06:54 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkN-0000000CvBg-0rbc
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:17 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-aa503cced42so807279166b.3
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705094; x=1733309894; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3jtF9ci8OPnOP4Hi31zRxsQ8dcNSQiS08yT+hSgOwYg=;
        b=hnFB+MNJ7DWuy+A4Ou0EgDhb6Dj70Jl0yFPve73Jxj4j4y0jhvkgZ3J3ac5nAPfJkW
         h238W8WFUdY01a0qfQuDkyEiodAEqrEczw327R3pWjnx/hZLroupJWN6b/l/ZQUnVy+I
         wbI/VUuhrS/KGY/En+G792OatlsqVRMFgrFlMoy5s5GCn5Z3avdOV76k2cejL5174o5t
         K75P6Qv6nBoNGDqTUvNTnRjZ/UzxSETfrmJgpxTonMQuRJa8C0YcbuFu56ScTuAvGS5A
         Pj/KvGX18XdejBXYoJPRTFTAfH3EBv4PzWiB6jsPFcDllaM3DBUQ2xkBVBR2GlqMG+jH
         4XOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705094; x=1733309894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jtF9ci8OPnOP4Hi31zRxsQ8dcNSQiS08yT+hSgOwYg=;
        b=AVCHpeFMNxYbZLqWbCj2INKnFFfPPzfTZ4JvUc8/RN+cLFgKKpvehCqSZyFEsVN/b3
         0sid9dS3TbF+WfD+kKKOnj5KO6UsFCfEwh5m6uJvo+WnqCpdUuORA4e9BYyHU/qB5/XV
         1WMV+SUGdje8Mf2GQ9uC9NT4ZC1h6/oxJd9RWaaQvOipSB2jQ+Y5sq5WJDvxXI6v2tXo
         +Q9TpCxjd37fPaLK2KYE6eYIVBU244FauIeIT9n8aBMqZxJ8FXK1K0u1DlCvItL5ARSC
         zX0AdXt6ZEq7YQGmnOy8j8sDxUrhsGvuyjJSIA3hN76NBJ3OfNzukSborGDP2CebRoVg
         IoFg==
X-Forwarded-Encrypted: i=1; AJvYcCXTNB2MCvCh/1aLRub/lVaOIuqHeHWQXBDlSkyF1mcNIpPFwcXc2TPaBushT32Zhjtx8bZ8lRZ9gsw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywp2w8mR6NvKOgOWqo0QPPWLTD5KDL1kmBqQupre7YuRaro4qcD
	wgbeGB1rqZB0okdzxN/ZGPBQSQAI0PMH6e4Rzw/ZqP2uHgt25blsvmzGoT/++VA=
X-Gm-Gg: ASbGncvC87gyZfYOntLsdzynv2kgg2Uw7OvH10P0IWqAGdkfnr8IuTHkrVrVf5B6biq
	CjvAWEARD8iCdg8tDAzLmdtIrhM8Zgejm3ZoF7SijNBncwj1Wo0UNs7hpJDgibiqrStnnSAP3uN
	u3AyjaSbFSV/H3vShhGunqmO0LhY01gPlNtxDm44nDcmzKHQxfzTRCmBGurtHBVh2e2/9UMrEgP
	fHrz82u3dCVVL8nLzYj2GvlkxnmugfAFjDUVuQqlyacOlyYBaL3fVDBBaemib9fwtKVcxcrxbvx
	S33In2sbZEm3eajk/C9WfjHq2wE9kUHguA==
X-Google-Smtp-Source: AGHT+IGpI0XPyLOxUc3SxNULKeFDjg8DEK2PQJHajpwT4G6OmiaLmyMslU+q4NFnVHObUoaipseY+w==
X-Received: by 2002:a17:907:7711:b0:aa5:12dc:2e19 with SMTP id a640c23a62f3a-aa58107690fmr187546066b.52.1732705093727;
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:13 +0000
Subject: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101: require
 Type-C properties
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_025815_234133_890D5E5F 
X-CRM114-Status: UNSURE (   8.68  )
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

VGhlIFVTQiBQSFkgb24gZ3MxMDEgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBiYXNlZCBvbiB0aGUg
b3JpZW50YXRpb24gb2YKdGhlIGNvbm5lY3Rvci4gRm9yIHRoYXQgdGhlIERUUyBuZWVkcyBhIGxp
bmsgYmV0d2VlbiB0aGUgcGh5J3MgcG9ydCBhbmQKYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8g
aW5mb3JtIHRoZSBwaHkgZHJpdmVyIHRoYXQgaXQgc2hvdWxkIGhhbmRsZQp0aGUgb3JpZW50YXRp
b24gKHJlZ2lzdGVyIGEgaGFuZGxlcikuCgpVcGRhdGUgdGhlIHNjaGVtYSB0byBlbmZvcmNlIHRo
YXQgYnkgcmVxdWlyaW5nIHRoZSBvcmllbnRhdGlvbi1zd2l0Y2gKYW5kIHBvcnQgcHJvcGVydGll
cyAob24gZ3MxMDEgb25seSkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUu
ZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKaW5kZXggNmMxN2E0
NDcxOGFhLi4wNjU5ZmMxY2UxM2UgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKQEAg
LTE0Miw2ICsxNDIsOCBAQCBhbGxPZjoKIAogICAgICAgcmVxdWlyZWQ6CiAgICAgICAgIC0gcmVn
LW5hbWVzCisgICAgICAgIC0gb3JpZW50YXRpb24tc3dpdGNoCisgICAgICAgIC0gcG9ydAogICAg
ICAgICAtIHBsbC1zdXBwbHkKICAgICAgICAgLSBkdmRkLXVzYjIwLXN1cHBseQogICAgICAgICAt
IHZkZGgtdXNiMjAtc3VwcGx5CgotLSAKMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1nb29nCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
