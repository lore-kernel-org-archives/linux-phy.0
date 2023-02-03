Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83356C05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 15:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JymSBlhRN4LRKbmcNPkdozkIReFKTBDj4gFBAkTg22c=; b=YBxOAZlannnf5Q
	PHsOb94zXJyNoh3rwwn2AYmaVyYChkg3YBeNwDhC0CT0ys++TyQDhHzFUqbR0S0sDCoA+OoCGSoPL
	AnOESY6Mrujb0sSBQOfCFNTjcOR1k8XiSpsDajBZgr8KTa5onCAIAKJffVJYc6ZD/dkniHf4oLJ0q
	EPZfe+9bpTCqbLGe4DvLa1ePXClko1pFq7NIQqtm8yLHtl8oZ/z5rnXDFy4K8in3R1NE08kCZeTnL
	tnwsRVVgSEIZInMa1Yn1ruAWVtXr+vV0f/J18HXO1llIafvymqtbylFRXOjHZeNSXzIo73a9oaJlS
	QGjL5mi0tieeRZKC4qkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxid-002dSD-VB; Fri, 03 Feb 2023 15:11:15 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNxi1-002dCq-UA
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 15:10:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id y1so4941609wru.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 07:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxmsZby7chocPQUWdQ4KxrGJYiRc+9itCp/CMEoa2u0=;
        b=hxOuQWtTHblrspsP6lwZmKKnUnidM9YjfN9wi6ixBK/+OF3jK5p7xPu7JkcjVWWE/j
         uRjBvkLQ5Ns4efHJMXw01qSoWrIPd06TGgreys7p6UjvjR1wkpHWf7vKZPLHe1R6sgVX
         eFgXae/5YCCLTDoKfgrgOAAbg16nGAmTcDeRnQYSifgEc66aCZahA13wym1lkbfHfR80
         ilzgIefuxXoG08ldxzK/A6Jv/3Gr3ixcbNz1+V2iAWwJeNHgBamVYENV22AY0lWYrMR/
         78YXRRSkANJYBPUT7w7l3ZEBD3zQHyYzxIRxBeQ2S1U3Rqyuq5h2uU9k2O9MIlIwd5Ap
         QrYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CxmsZby7chocPQUWdQ4KxrGJYiRc+9itCp/CMEoa2u0=;
        b=iC4qqTAIzdYTEnS3NE8tk8rMZiZ6W62mY/VSd3mP6WLQKxEBsqj9nvyZAmq4iYS8+6
         0vO3aIZqt6W+SC90FP5y9HSPYg6xrZEjsmVIGLU9Ca3W1GuYVZLWIZokZluUY5I+4t3s
         jGZjNZ5Iu0jg+PjUZqELuwInzfFGt6VPy4BS6JrA1W/fOWVwRtPnMscSBcCwmzCG32sL
         ZbenvR8DqR+Hz5ONcs5CeVocsoy8kym5gJ+Akc1kLqPx3uIEw7s4U+HBnH8R7qWw11RT
         6mcK+TMot6i1wHo7rjWB1tYuceW18LrHE9/xk1Nh6fW080sDMVSanHZH1EnAEzux2s6K
         rbIQ==
X-Gm-Message-State: AO0yUKXfw1rA4xz4YfWgaj0WyBJ7CgdltVLjKRWN1fZydUoIdgFVtQjL
	nzrVa0oP62iColJBYVfqv5jUPA==
X-Google-Smtp-Source: AK7set8UT1zY1JylxpqtIyxXTpJULytR2aCv1FOGATgmH8EGiuS5xzgYLdS9GtaHIdlfbLLTsTtX3Q==
X-Received: by 2002:adf:f789:0:b0:2c3:da89:bc50 with SMTP id q9-20020adff789000000b002c3da89bc50mr1105626wrp.52.1675437036739;
        Fri, 03 Feb 2023 07:10:36 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-kernel@vger.kernel.org,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	phone-devel@vger.kernel.org,
	replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 5/8] phy: samsung,mipi-video-phy: deprecate syscon phandle
Date: Fri,  3 Feb 2023 16:10:28 +0100
Message-Id: <167543702106.62628.6871055553662253962.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-6-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_071037_983408_2BC4D1B4 
X-CRM114-Status: UNSURE (   6.79  )
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

On Fri, 27 Jan 2023 20:40:54 +0100, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[5/8] phy: samsung,mipi-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/965e69f2c95e5be90ef8aa009aca4294d0433e33

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
