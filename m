Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED240C7EE23
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1VcoQ5cCUQL9T/Sm9ovFUjTRtKLDAHTQ8nkdqS58A4=; b=pXG1lLubCgfEEr
	hhlMs7/gBtZsBxfrIjJdNS3dKyVkwBr7UbMciTxx0ShpEWO69KUyTppCsdhLq9ZqUAYTcm7f/uzaJ
	p5jvh7NgLNV0S/EUydg7BgapnO1Mv6TSj3o+y6qKsMX3tfk7ugBfmmmGGBuIk/LeBIfUqorSYh1PC
	yKKVp1o4Hb7V9/l4QcvyZ4dibp74jNkyYc0ksROV1WNVKLtA/+uE7ogzk+M2+y+jg828im37VAHTK
	35haXUVu9CJVELoHPfrBJibbttmVCNBfxbOqQ80cmu7wfOAYjkZJpaWyooqfr/w4Ciog23tHGcLfc
	E94tdOKAgrsYQATw3Qzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRn9-003yiF-1s;
	Tue, 09 May 2023 18:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmj-003yZa-2a
	for linux-phy@bombadil.infradead.org;
	Tue, 09 May 2023 18:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=oXjeMbNlFty4Wu6Nx3i/5bDj9AhccjiXqRqHloLRrYU=; b=dsWqbsUWGecYeeF+G/NqYk4QDf
	nDbH4mVvlBzpWw9Pa8ZQY0rEjdlT7Qd7O4oQi/hcifZlC9e7hlZ7uJcgtBDGcHmwfD1QyYrG+6V6g
	/1wI4FLfFhFvIbmgXQArRmPjH36ZGQNmtqyeWry1taISBztXEb78twzsWgW3KLQodGGOD+laXRkXG
	2PySSvfHn17U2JSs4cWwQjQPSzkInv6VUcnkBnEtrXWR+7gxiqwIKkEYk3s6YeckPqBS6IwaI14Bz
	+BcL/PwZ8evPrLBCy4ITS6QtXwqfpwTVRuAk3UlTgmTKF8ttJ7cbatDHH6S1iXg6JDFz4yBfVS0Z/
	pL5YG2mQ==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmg-006Djj-04
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:10:00 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-94a342f7c4cso1093141866b.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655794; x=1686247794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXjeMbNlFty4Wu6Nx3i/5bDj9AhccjiXqRqHloLRrYU=;
        b=SsmMkRv8ExF0vFpzyDRKwiijGpPNDMPfk41gBcpL3Rf1xjVS3BpyDv61/26D/hNLD4
         4zlBticY2nXaXYb6U710X2Wsl/PO4tMxeJK92PDcUgPoz894sPpE84X9qNstsA4HehUX
         o6Mys+v3xgS752qrf7EtBobou0K94694d7jdg8gKUTEcugptTz51OqGV1My3G/6UnDSw
         Bl1uyb3xpQKT0FD74IwyZcHmsMCo/qiyPJKcostax3ZBzOjxEkbuqaH6wnEd44EjjkFh
         iStUahPL1DL4l8dLo7/SNuhsKeB7Md4CAg2LKB7NRbQUqAcaVqPahLlqdPGE6jT+fc2p
         1u+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655794; x=1686247794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oXjeMbNlFty4Wu6Nx3i/5bDj9AhccjiXqRqHloLRrYU=;
        b=d7Osa83bKeIeOoMkPoegKHffE5Zrm1r3ya2AN6rkzPLz/Arv+Nbuwpp8QzjRs6/A+R
         ToBMHSoXIv7VAh0dLUie+rZulrGXW+JmV6yJwajYTZLWPXOKP0rUYdbTUbiDKEsXYHNz
         kfTSIs+9r2umcUqWlo4qfSmx3n2gTbBYBbRceqVrTC+W/ame8AU7Q3RLRR1SBQxTYBxY
         F1P1fphzYXwJsE/DN9sQ8Uw4DVin7IkKiRI2GVnGv7VB3JJKbqvUxaoCbQph1lkcxel6
         QL9J9MbIJ16sz2yAoUoLOgOFNg33Df/4eYw2KXWqXOQN25+nUBg/1p6Kvpb0amVfD114
         04dg==
X-Gm-Message-State: AC+VfDyv5kZRbBYA3JHltYnJVtM6CzAf3HdetHOnWpOePCGYRSUEWS8Q
	CzhCqHHCR4sor6eQ7QuXY9ZgKw==
X-Google-Smtp-Source: ACHHUZ5XtO9xWsXdQK462FkDITWtLOlPWTWZE59msHLywpQRrhFOUzpovI44XB2HfWnDrQ4ydwWIbg==
X-Received: by 2002:a17:907:944d:b0:94e:fa56:a74f with SMTP id dl13-20020a170907944d00b0094efa56a74fmr12775313ejc.14.1683655794357;
        Tue, 09 May 2023 11:09:54 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH v3 12/13] dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
Date: Tue,  9 May 2023 20:09:36 +0200
Message-Id: <168365575566.242810.11963330724766854967.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-13-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-13-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_190958_269813_9C39A6A8 
X-CRM114-Status: UNSURE (   9.36  )
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


On Mon, 01 May 2023 21:55:24 +0200, Artur Weber wrote:
> Add the compatible strings for the Samsung Galaxy Tab 3 8.0 series
> of tablets.
> 
> 

Applied, thanks!

[12/13] dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
        https://git.kernel.org/krzk/linux/c/fd811cce9b92635799ba5c6de657e4a53c68adf6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
