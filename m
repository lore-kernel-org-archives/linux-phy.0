Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0C606A328
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 21:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HPcSBADy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i2/K5/aNbCGvoa+E3IiuFmFly6OWfbTM2f8ld8UgTeU=; b=HPcSBADyrW4+7QO5rG3hkJLDK6
	vx2b7xv67jrPMTPD13o/JJIf+QrPFFN5pOqC+kWnNG4a65Eey2swe9/woQMUzauwadMNMas3jurcK
	C0iLXJtL5AcuZWmZw/y1hhfpUfYyaOJQ9xk+biwaJYTyJG84j/ag9xfTz9CLVk2OSv1/65n91jl2m
	D3ookpEwcJyUDKEOrG8ZN/Ba08/vfM+S8MqS2UlVeKFR/b79YlL3uUwIZQ/Kr/r9T6k2uxY4tiiIM
	q1INDzgY6bjdWqGOTEE5o5JuFavVIICsH+/18P/Ddb83ZgfedsZ3+13WFRZTuuif1/Vk7UAfm4Fav
	IAJpyPnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP4a0-0000000Af8J-3APC;
	Thu, 05 Nov 2026 21:01:04 +0000
Received: from mail-pj1-f47.google.com ([209.85.216.47])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP4Zy-0000000Af7Q-1oo9
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 21:01:04 +0000
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3b0a519049aso1368048a91.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 13:01:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793912461; x=1794517261;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=7b+CfX8248YTc0cB7f90DTUeLWviHqXuubKAwrMY9UM=;
        b=x2yIIPy1gi+WDE73h0i39ibsHtz0jq6TXuHdcm6k+zBSGpUvqma1CKP0jGB1SQyYRh
         Z5QxYKdlwCU+SXd//y2oVtb7DtGl9T5XuE21kNiB8K4jHuE9UUll6d1M64GPHJ/XHbLn
         wHKR3vzQ6WqoPZTH+KMn4C9iO5FO5MUZro0XfIZvusOJOa24wgwDaaXWYSjKp8qeCoUC
         RCPM9IZOsYdWaUZKjotVR26ch6dB7jIvVgIIJI9cXg8CXq/SMhGHEofgXR5nAt31VdIF
         j3vvoUCUbGzUCSDn+/vfy/214aTQqq3Y6rGoVMfnVEcbVMnnBduMT8mGKuqpQAyQ7A++
         m3EQ==
X-Forwarded-Encrypted: i=1; AKwUvBzyK9+Yv0FKQYKlySX9/D1tTL83/neM1JBh/foWZZFOAxyPqxpxtYx94CoXSMqyyIkaPau/SOfxaG4=@lists.infradead.org
X-Gm-Message-State: APuU4Z/2a1K3csLlKSa6PH9NRtoMmQSTikrtJaFPjr6MhIkuUYkamqWb
	jVa2TusLcAfYspFkjTCrcg/2Cxx0fqSpkUdSGNqOg7BmGY3fvV+jmWTamX+sxvzU
X-Gm-Gg: AYBFou1WrHBVxQJtZ5hszPTSkX48H0zYWpd7fDFMjg+U1IsYlOSeHTqjvS/Jyq3+Cl/
	AfUGbv6Vq1/n+t+G7IF7O0Obp/61lWAYMTtLe6nJZ02W20sW+V8Zql9ajulz5baCvl6MZ/r4exF
	1MRqaaqRu08CtBN+tdGpctgPOtRQxcLMRxIsusLMenHMkO265JTcE8wgTnOrf2lybfdUv5DX6Ic
	On4eTdqp/TmGxEA61gIyYvwk4pL+VPD8iuW384C9kEhQgs+jsh3GQwE1whcigbz1QuapIYt6qg9
	/fWHu0aeLe/Lw0aNMwxbrazOlz/sr+84vppEcQlbUGjNMVZqwp1oWanZwYAZq6wPYt1yZSeZGAl
	iaYT72TxS746k7XOAwUo/ApVWB1yvAp004t+pXsv0FKSqRSWdr6199Q4ld8bpWuEfqmuNi/bDDX
	3WSL8UHg3kCnOh3Bj/BQ1ZsKp13Jxyi09/MZ7Butcsto8oQIbvcc/qKyEHDwsNs2oyWXFdRUT8q
	FkOumCTr6lZZDF9jfzVKL+PPedcMNjrYjBYgvhxCac9PSkCrLwrqhtBKKWFtE6+G5h1B+82fbre
	GRiJSLitM4mBCfeB/vGbe6cWKwkS4fOjdpJHQGR4yBTtHF7wbInigM3eA2kprbf8wGtXP3L1Fq7
	ntMwIrHnyfE0UCIplCJmv2R3KoLA8TDtGIZpSspZ5E/U=
X-Received: by 2002:a17:90b:3f45:b0:3a8:d71:5fda with SMTP id 98e67ed59e1d1-3b0db70b5bcmr215984a91.63.1793912461422;
        Thu, 05 Nov 2026 13:01:01 -0800 (PST)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com. [74.125.82.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b3280378sm5026614a91.12.2026.11.05.13.00.59
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 13:01:00 -0800 (PST)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-3282db206d3so156957eec.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 13:00:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvBxHkOCDoOs0e82E/o7RZVZHBwQ9IwQQKPYhDvVGuLpF1R4a1MpHofSpR/nP6leZ5kZQOOoHnIz5K1U=@lists.infradead.org
X-Received: by 2002:a05:7301:7187:b0:36f:4569:7392 with SMTP id
 5a478bee46e88-36f77103af4mr423739eec.41.1793912459132; Thu, 05 Nov 2026
 13:00:59 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-2-db0cad937614@telaak.dev> <7905740841dd0f47273b63dd28ee504b6fdf8084.camel@pengutronix.de>
In-Reply-To: <7905740841dd0f47273b63dd28ee504b6fdf8084.camel@pengutronix.de>
From: Joseph Telaak <joseph@telaak.dev>
Date: Thu, 5 Nov 2026 16:00:47 -0500
X-Gmail-Original-Message-ID: <CAPY4CJ5kwLxQZCRF9+ywSavP0G3K0ytvB5+NbmrWGrtLbOnw=Q@mail.gmail.com>
X-Gm-Features: AclHuK9lRGyMU734A3a1_3WSwAPLqlbO5flD8SV-l9TZ_P6sYsnX4mVcOu8Aedc
Message-ID: <CAPY4CJ5kwLxQZCRF9+ywSavP0G3K0ytvB5+NbmrWGrtLbOnw=Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: siflower: Add SF19A2890 USB 2.0 PHY driver
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_130102_516538_7D751BDA 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.4 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> Since these two resets are always toggled together, consider using the
> reset_control_bulk API for both.

Thanks, v2 will get and toggle both with the reset_control_bulk API.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
