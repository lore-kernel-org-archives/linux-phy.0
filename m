Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18D5FC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Feb 2022 08:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJCSGI3EFUy1ESTRMmD6Ua1IkN7XJNBGnP3jOPSX9nI=; b=fuO45bz3+pqS6l
	UuJ2Pe251JugbfReKXabv+bpTM6HzvZmFHumbgWliZcGqr0up7x0dbf1m5ZdXMbOO0j2LVaCsZ8Io
	S3p1SGDWIeBBxKSbOAheTZsWwe1ltt2Bf7CxAvALQB9NW+IpNJNp/gRF+1vWTSLyIY4cUlNsy77wv
	KRVBHP7Og5FHdtUXgzJE6UbxTI7ysBtdA3dwWkGnry8pk/xQCGod9SaOvsfLTyvVtKhJnji532UcZ
	AhGC3o/b/sq+eFHwdZWwPtJOITNjzfVP6EWGbA7MXcPDe/aCZ0bJmc2Nq+7/7gNZLyH7I9bv7zdpP
	ytDgu7jvitUdkgHItEsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEoN1-00BV3I-Cs; Tue, 01 Feb 2022 08:18:35 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEoMy-00BV1l-9K
 for linux-phy@lists.infradead.org; Tue, 01 Feb 2022 08:18:33 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 221E73F328
 for <linux-phy@lists.infradead.org>; Tue,  1 Feb 2022 08:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643703511;
 bh=4OMJ5aSVw9egu+KfVN6MouMq2XmyI041S1HUizk8CCg=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=QeJWjHOs/TDyxxegU58iKapFRF0SpMTyDqhr9fyHhcS1hIhXhDpfrSAcNAMnVbdlG
 i8QzN0hGObFje/MwGyuENHxe4Hn4a51kayL8tVqaD5GS3HEyVmTKpTE7Kqbek8jmx2
 yD3B3e/A3PBo8k13rnq48GU65DbKStdGJ+SNy+VbSAdpFWbwGe9tUXoyR4wUGyF1RU
 GCXCPIn7ZbuQpoSiVsyJ7TAzLJWL+ccauWcZooHnh8ilwPsoYDRubBxcy3EdPzYzxj
 rMqnuAORQEvfLrs/JXkRio3O28mNaJBJhtWlRc5bupj7PLPRiJGEG2IP/+yTMxfvmA
 yP5qJfJa3A/1A==
Received: by mail-ed1-f71.google.com with SMTP id
 f21-20020a50d555000000b00407a8d03b5fso8215566edj.9
 for <linux-phy@lists.infradead.org>; Tue, 01 Feb 2022 00:18:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4OMJ5aSVw9egu+KfVN6MouMq2XmyI041S1HUizk8CCg=;
 b=z6E7g95n0J9/GXeaLysWKJHQbVT+1DkCtPIRwF18x2LkoiL7lcFXD7M9Via2BB/kb5
 Ut43lZtyMjZboIT3fpioJsjqTHxofDqb9zSmZ6Nqh2krvSXjixd3lcOqiiU6A1IhmH/s
 6nobBHGvyorty9tr8+5f24w2Ojg/LKOlUdrceJ1Jbj/L6JlL2vmOYMmpy5Kjb93fP3sE
 nwoXNRjNy3f2eQSUAE+WCdjErs8IRDc+IOvxEnHSf7XUCDdJsOvK6FgNkeaNmvnkWila
 G67U4ZzYdcc0RGYybOpqrRpGBbSjJSClWpL4xq28lRlL3vuewapI/5LxGQ+N6LWMcmXM
 0lHw==
X-Gm-Message-State: AOAM531FwUCPIL7pp2dGzkoDkxIXfwHyDx1ZKBzWWwheYEyxXeR6hSX+
 +xG00gxNzLqPZwQ3DOGIXwsp9PeiwD5ICgX1EPLfxBg8ifXOoYDJikVMLe6nflMk2iAkmqJ/WXy
 tMb3cnMZ3oii6ZnqR5NnJtwaQzw713eXe1rIFBrw95pE=
X-Received: by 2002:a17:906:19ce:: with SMTP id
 h14mr20919921ejd.407.1643703510611; 
 Tue, 01 Feb 2022 00:18:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwi9GBsiIiYtp42mt15Psk7ObFdzcgWoYjLwVXsinm40dgxMTPh5vnURxVxv53FfpPvG7hEKQ==
X-Received: by 2002:a17:906:19ce:: with SMTP id
 h14mr20919913ejd.407.1643703510486; 
 Tue, 01 Feb 2022 00:18:30 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r3sm14368372ejd.129.2022.02.01.00.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Feb 2022 00:18:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: linux-phy@lists.infradead.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: (subset) [PATCH 1/8] arm64: dts: exynos: adjust USB DRD clocks
 with dtschema in Exynos7
Date: Tue,  1 Feb 2022 09:17:55 +0100
Message-Id: <164370347107.13100.9120518363426119036.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220201_001832_484324_EC6B8C1E 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sat, 29 Jan 2022 20:36:39 +0100, Krzysztof Kozlowski wrote:
> Use the same order of USB 3.0 DRD controller clocks as in Exynos5433.
> 
> 

Applied, thanks!

[1/8] arm64: dts: exynos: adjust USB DRD clocks with dtschema in Exynos7
      commit: a0d5455330ece6f50ddf9e71d530f91c302803e9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
