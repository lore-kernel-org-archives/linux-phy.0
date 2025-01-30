Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F196C02190
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jan 2025 09:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sf1pPEzxgOo3WgaNVuvH/hTLn2WxjbVRJWxud9nGoWU=; b=iKuxbKyUK0WeKU
	X+WoacxR6fnX8z+ei0RBuY4C/yYBrUoFH60a8UDR23ikxjLnEHDSuubPGDF6Gu75v6Kbmh+nNM1kF
	7ha5GqZ0RoTcPHEqS3qc6y+O9Efhup7mEJWOekFq+GeBhNoR6pvlc0bs/kQtjWo1DAW/M3K9jE0K2
	YCHDZmS4IKBAYImBJqwweKcV71cp19bF5DA58cAKE4K9GxEvArcpJjSkTEkE/kGXx8K2hqY+pZVkr
	GiLba4MxiXFZUm8kS8Gj8SqJs3lI1+3bFRFEzDRy9ZXF0+D58hauKT6vox+CeQEPPsqEiKqiFg+vg
	gUaXYYRERka88Od99x+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdRDi-00000008XgN-2Gc1;
	Thu, 30 Jan 2025 09:52:22 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdRDf-00000008Xej-3cTY
	for linux-phy@lists.infradead.org;
	Thu, 30 Jan 2025 09:52:21 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-518957b0533so170957e0c.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Jan 2025 01:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738230738; x=1738835538; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gIgiURoIKeHZ75W8n0Yn2XXbNIX+HO5mOVAyC7vGTcg=;
        b=oNQxK80/nVsn4CwQnWvYQNg2nvMUX2ql1Z6KeCJIj0olAktMqWceZT4hlBckA2eprV
         iDxbBlGgh3Kjw8pZkkSo7jLjCyBzLTHvtPOcmlAUWtjQzKc2PzM6YJ3CEl2R+3eGlIqN
         wXN+PGapkcEJ7jjQcqPeEt+CPhA5SjSywHXBfao1LVh2lIeU5gH7XIrh+IMXRnAdQfyj
         xkXc7g1yKsZ5rGWbIyA/5kLUGXLqrDIzVxSuctaJS5/atWw06g/SLQXG6F9tKjjeVXU3
         XgeepV2GvDyTgNW/CNoQlDpOnx5Qv8vYRXaH0jKrpeea0/hZ89kLccYCVM0/xuInjIMo
         4oaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738230738; x=1738835538;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gIgiURoIKeHZ75W8n0Yn2XXbNIX+HO5mOVAyC7vGTcg=;
        b=wB6fQJAHExi+yTVBWinPtBKCewNJizKq+XVFAVXWQAkWw6v4bRymaxsjDG8bmolirZ
         3NiFq8+9VKWrKBIyREqAwHMofj97bw9SK6oLly7wVKB1LFdT8BAV0NhK6KGtF/OSx6xm
         uo0m/aIp2snQEbuthaoUmOh5RAjEceFW9pOcwT9A8MZVkibhu/1Ch5qA9IvyoplMuX8S
         6uzn59X8DH6m5qY/aVMwDJR34vGD4Fzw9yCE65lEUe6JAjiZUMAmKDvJOWaAneqa/yIR
         YFA9H2oZLJz8eUhUP0opm1yLwEkuwj5B7KGME5y9XZ9EbYzXTf1OxkGqrfELcEyEzgP5
         wDxQ==
X-Gm-Message-State: AOJu0YwEtUfTrJQ8xxGo8LivCmB9DKWbL2bEr9jQnVXxOgFarPBxzsId
	cFVTPtrLF4JRBwBLwOBSuAZ6GSkQH6OCJNMeC0xJIPe+cOvNuGtSfUuXFlXkIPbxMvqFII1A1hL
	nQLTaz8EMkuGzF6buy680nQVWTdJpnnaAOFQ/DqaEjZ0ewerS0XU=
X-Gm-Gg: ASbGncvKBxgMr45NUV4so6RjLAXxLxOjMvsk046GMHFpVj5GsVodlLVAxs7huJOkHfb
	OOlL/fDg6GAgbmkmfxBgjFlaAW1R7P4qia97LHMDhJzkaPImP5rw6RZi3QWzKnMuFOuSdPYFXCL
	ldI3DRfmDMVbKqhMLmO4QJgTGpIXgRlw==
X-Google-Smtp-Source: AGHT+IFtphWzHzB5hLr/5hK9G0Oca2XVEYUATYBwh55KvkHQqmoCAkCZVHlU7DPA7oNByuxxN4PbbEmK0DqTS/BNDj8=
X-Received: by 2002:a05:6122:65a2:b0:516:157d:c5fb with SMTP id
 71dfb90a1353d-51e9e55bbbemr5640094e0c.10.1738230738043; Thu, 30 Jan 2025
 01:52:18 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 30 Jan 2025 15:22:06 +0530
X-Gm-Features: AWEUYZkeZKfv6tjMqdkdLJ6wGFjSj8QJD_kr6h2mDudYF9DdNw1AJWHq70JM9Rk
Message-ID: <CA+G9fYsHGrgZsEEVvP0XMcAhLyCYnrCPgZJ1puT6cfQBCGUB9g@mail.gmail.com>
Subject: linus: arm64: error: call to '__compiletime_assert_536' declared with
 attribute error: FIELD_PREP: value too large for the field
To: linux-phy@lists.infradead.org, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>
Cc: David Laight <david.laight@aculab.com>, Vinod Koul <vkoul@kernel.org>, 
	Adam Ford <aford173@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Anders Roxell <anders.roxell@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_015219_906522_C7AF0AC3 
X-CRM114-Status: UNSURE (   4.73  )
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

The arm64 build failed with defconfig with gcc-8 toolchain failed due to
following build warnings / errors on the mainline linux master branch.
But the gcc-13 builds pass.

First seen on v6.13-9485-g72deda0abee6 on Jan. 30, 2025
Good:  v6.13-9338-g05dbaf8dd8bf on Jan. 29, 2025
Bad:  v6.13-9485-g72deda0abee6 on Jan. 30, 2025

arm64:
  build:
    * gcc-8-i386_defconfig

Reported-by: Linux Kernel Functional Testing

Build log:
---
ake --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/build ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu-
CROSS_COMPILE_COMPAT=arm-linux-gnueabihf- 'CC=sccache
aarch64-linux-gnu-gcc' 'HOSTCC=sccache gcc'
In file included from <command-line>:
In function 'fsl_samsung_hdmi_phy_configure_pll_lock_det.isra.10',
    inlined from 'fsl_samsung_hdmi_phy_configure' at
drivers/phy/freescale/phy-fsl-samsung-hdmi.c:469:2:
include/linux/compiler_types.h:542:38: error: call to
'__compiletime_assert_536' declared with attribute error: FIELD_PREP:
value too large for the field
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
include/linux/compiler_types.h:523:4: note: in definition of macro
'__compiletime_assert'
    prefix ## suffix();    \
    ^~~~~~
include/linux/compiler_types.h:542:2: note: in expansion of macro
'_compiletime_assert'
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
include/linux/build_bug.h:39:37: note: in expansion of macro
'compiletime_assert'
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
include/linux/bitfield.h:68:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
include/linux/bitfield.h:115:3: note: in expansion of macro '__BF_FIELD_CHECK'
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/phy/freescale/phy-fsl-samsung-hdmi.c:344:9: note: in expansion
of macro 'FIELD_PREP'
  writeb(FIELD_PREP(REG12_CK_DIV_MASK, div), phy->regs + PHY_REG(12));
         ^~~~~~~~~~
make[6]: *** [scripts/Makefile.build:194:
drivers/phy/freescale/phy-fsl-samsung-hdmi.o] Error 1

Links:
---
 build log: https://qa-reports.linaro.org/lkft/linux-mainline-master/build/v6.13-9485-g72deda0abee6/testrun/27067488/suite/build/test/gcc-8-defconfig/log
 details: https://qa-reports.linaro.org/lkft/linux-mainline-master/build/v6.13-9485-g72deda0abee6/testrun/27067488/suite/build/test/gcc-8-defconfig/details/
 history: https://qa-reports.linaro.org/lkft/linux-mainline-master/build/v6.13-9485-g72deda0abee6/testrun/27067488/suite/build/test/gcc-8-defconfig/history/

Steps to reproduce:
------------
# tuxmake --runtime podman --target-arch arm64 --toolchain gcc-8
--kconfig defconfig

metadata:
---
  git describe: v6.13-9485-g72deda0abee6
  git repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
  git sha: 72deda0abee6e705ae71a93f69f55e33be5bca5c
  kernel config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2sKEbH5NudB5wtp6BtFn2cIlatV/config
  build url: https://storage.tuxsuite.com/public/linaro/lkft/builds/2sKEbH5NudB5wtp6BtFn2cIlatV/
  toolchain: gcc-8
  config: gcc-8-defconfig
  arch: arm64


--
Linaro LKFT
https://lkft.linaro.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
