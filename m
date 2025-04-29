Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A47BC3ABAA
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 08:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t1ddtg091HffquyNzEKztUTf0mwOA+RTwJQFz1omlkg=; b=0stHsCGXRVJfsJ
	Jk1v2D2lNyYpeKMrhbfrk4AtodzQYA99chSCRK2Ar08jcM4Pqskg27safdfgx58sAbwHf8CBE7hli
	j7vixRq2CVTMGPojMDKNhXkakW0COKHeb0frJ+2omadwxU4ITFGukUqPPiRQyWFC6tdJgnbL4zSML
	s603z3hHhncDmiDE2tWe7Ba88AHEY28CEHpiJddH2xZzMg3bS027J8nVMlTnj8AFoQ5p17ZI+2svT
	7VWm001653l4+VHn6X+M7WucwpxknhA2IgICd+7U/hjv4yu2Y8IgVUucoNfzXHwcXWxFbs4WeKBTf
	DGTjXPfwHjzVnbMM+Kmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ggc-000000090Lj-0HuJ;
	Tue, 29 Apr 2025 08:51:30 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gef-00000008zsn-0OfN
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 08:49:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9ebdfso1510519a12.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Apr 2025 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745916567; x=1746521367; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bQ3Du2msqS99gBPXd5VzJGX2ImDSOyuqnj7RIZBT6Dg=;
        b=plWYCETXMqkODxDsOhbak9ZaXoCKEy9YwgZaG/KTojZxbo4ErP/8pD3z/mUACIQPbS
         pHy/Bx6gA+FSHdyZ7ny6o2rw16CihOWbLMmhLHhUFC0xoFk6BOrNeAtk81cXYNveLk0z
         q1EP8g/6Q4Wv4CRLJ/EmmXIMs6R/RnyLWbkJEXrJHjCAptbz2a4V0MngLkYTk2ou7TQD
         ihOVcievMe84JNOh4EZXxPTU+koNhpokyP0zLeXjvL/4L6HVRXWNZHLjVs5XhVEmNzPT
         9GRBlh/9LdgQfNTe2Y/cQBK1o2nqgVyT35mUXrYd/CTc9NuNajRIpsdpGtSb4l+ZRFLU
         I7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916567; x=1746521367;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bQ3Du2msqS99gBPXd5VzJGX2ImDSOyuqnj7RIZBT6Dg=;
        b=sPW0fb6ip7IvvkSfyx9oCE/P5xWaOBjCUonTn0qR4i3SCzpd4eLvg7smflxdnI8dm3
         NmtT8OdF8E/6JXt1Kbxuqh5Mq/5u1K2Cn0gojAmpPQdWm4N3k+xOwjjRz7+LsWzewa2Z
         GBfmyQfaer7rCfqzZ87aALuELVxERC4KDkAykdSebzjEs88w6C+jWbo7Eakfr2g2TAqp
         6w4iSboCzXmtPDKj3bxQPWW1US2ntd+MW/i7eXyGNPqdd3uK1fKrgXhUrZKAaHPNzmX9
         5H7yFd+cP5rzYpboIVDQwN8DjSOajud5ZHgcwJHG74oILaIeJb+Pj4BMB558DLIUNjSd
         BN/Q==
X-Forwarded-Encrypted: i=1; AJvYcCX+qsD0OXFsAk3hy8hhx5EdAzaXjl5GiBDZ0d704SXFr2qaB0Em80PTp919fybKvxzig3ba5d4HExE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyN/UNBwDp3G7oiSzF0gEUiOu6j9U5CqRzf1prLhpOXsiFx5kH
	bKT24AzQ6okv8clPzDIFqudaBBLKJkH/fKLXs6sjXZgFhFpIBHN7FCDo8y2sikZrBT6yFnMCiwX
	QLlQ=
X-Gm-Gg: ASbGncuq7xkeqJkl+2kvwqSlL92i8kRV3CAOsAfe9suJajC3vvsb6qsQ/4klgaHs/Br
	M9oEnYtUTcIpAmvXTbd1CbWFPao3XgpdaHu/AicXQ0FjcLPHTUMuq8X/i6bee792zgmWU6bSvDT
	V36KnLRECzWgVqePBRxe7RjO4VuT3FefcgVvuvbFG+WJfatkI7fJTfm93jLFum08ZsGvb0QbVSQ
	XcJrkmVJXFPakPxDE4zLNHSlHXpouRfTaQRoBa7t2EVjLT7+gwPRqAQxyoaY3sspAJj6Dep3mxs
	FdZ2zlgtv0BR6LT/A3jECTYNcb0w9pThPoDxr2IILQh25H4GBG9XFrUTUeUIHoYJVYB93ZlECng
	B6oGIv8C0E2OPM56Nj+1Sq/2w
X-Google-Smtp-Source: AGHT+IGUOSkbNQi0TijAb91lwptPj1wuZauO4Jmzd3aIvKCh68E4hLv9NlgmiXg+nD07/oJegV0vGg==
X-Received: by 2002:a17:906:6a23:b0:ac6:bca0:eb70 with SMTP id a640c23a62f3a-ace84b55d83mr1224307466b.56.1745916567365;
        Tue, 29 Apr 2025 01:49:27 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7ec0e6331sm3546619a12.78.2025.04.29.01.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:49:26 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/2] phy: exynos5-usbdrd: FIELD_PREP fixes
Date: Tue, 29 Apr 2025 09:49:23 +0100
Message-Id: <20250429-exynos5-phy-field-prep-v1-0-39eb279a3e0e@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJSSEGgC/x2MWwqAIBAArxL73UL5wOgq0YflmgthohBFdPekz
 xmYeaBQZiowNg9kOrnwESv0bQNrsHEjZFcZRCd0p8SAdN3xKBpTuNEz7Q5TpoT9Iska6ZQxEmp
 cpefrH0/z+37CgqzVaAAAAA==
X-Change-ID: 20250428-exynos5-phy-field-prep-1b3ea73d4773
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_014929_129818_C412893C 
X-CRM114-Status: UNSURE (   4.90  )
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

VGhlc2UgcGF0Y2hlcyBmaXggc29tZSByZWNlbnRseSBpbnRyb2R1Y2VkIHVzYWdlIGlzc3VlcyBv
ZgpGSUVMRF9QUkVQKCkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJh
c3ppa0BsaW5hcm8ub3JnPgotLS0KQW5kcsOpIERyYXN6aWsgKDIpOgogICAgICBwaHk6IGV4eW5v
czUtdXNiZHJkOiBmaXggc2V0dGluZyBMSU5LU1lTVEVNX0ZMQURKIG9uIGV4eW5vczc4NzAKICAg
ICAgcGh5OiBleHlub3M1LXVzYmRyZDogcy9GSUVMRF9QUkVQX0NPTlNUL0ZJRUxEX1BSRVAgd2hl
cmUgYXBwcm9wcmlhdGUKCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5j
IHwgNjMgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
OSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiAzMzAzNWI2
NjUxNTc1NTgyNTRiM2MyMWMzZjA0OWZkNzI4ZTcyMzY4CmNoYW5nZS1pZDogMjAyNTA0MjgtZXh5
bm9zNS1waHktZmllbGQtcHJlcC0xYjNlYTczZDQ3NzMKCkJlc3QgcmVnYXJkcywKLS0gCkFuZHLD
qSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
