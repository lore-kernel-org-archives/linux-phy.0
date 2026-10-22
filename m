Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A20B606A319
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 02:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aZhTHe9U;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=XOY4eqH/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZlVhxTzhY8eaWGLhjE/pJS8Ocbd3TbXudiwKIXSeUs=; b=aZhTHe9UUPo/UH
	/jPEken6LC455cMQ+C2nLNNkYpBsCAhBZ6/BJ9B0bOxjypo46kQ+MEKT03cpVlAJGFIQK2EoZ9KKa
	0/B1bLZBlxAgjpvJ90kEjNzYCcnOtNT62nMzTdXxiR1s8p37mdiCkgO/pwdizcjndY2OnnN4TmVgM
	6mVq1dErD6QXhRy2rMQ2mCwRzH1feJBp2+YMQcsOT8Cgh65iNo/hH1PGYk4tEEkpogms7Stl5hA5O
	tXKwHvzTbtZLeQin0DwnzX8k46WNSVs/11A/CGejz4nxH9ocxm8DoBOPXhkLR4C5Igcsr3MpxjHFV
	5Cm3xqYW/WHOCyUlB8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJibk-0000000DDLL-43Qz;
	Thu, 22 Oct 2026 02:32:44 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJibh-0000000DDKB-3g39
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 02:32:43 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c3ff043bce9so38194966b.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 19:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792636359; cv=none;
        d=google.com; s=arc-20260327;
        b=mgftiEtg0zuambZjg8Q3enZd174ZMgYzglL/GvqKNKvESJzUz95e1kvG4AR8KUJnTp
         J2h51H01Nrhh/mONYm8EJ9CMlVEaE1CQRzPBQE6qScLJw3DGoOLca6tpnzUYSqLaltaO
         Xy/NPfxlkfbXyBHqUxmRDvvxrqQ5cY7Tm0qEZVdyEd7yWCITM5jtvpQysqPxBEj33IeB
         ObdQH3Qe31362L8+SHrx6QLhxEAg47reHgOL5DcEoOpjmDf6kylBzRshsYYlOH0Le6t8
         7UYYoKNIh6AzHYV2wn+zpdS59GffRgTODJ+PCDYNZ9C8MIm/K0nB35UgphcIPO6cWVMd
         eyVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        fh=+ps6kZ9eGQj/sdLm8GPza3hxj+9lqqQ37Z42bNtLehc=;
        b=jOA2k/io62mvBfG2NYAP5nQxCq632oDz0qAJsSju1c/e8N2eSoAlH9YAckkE054wib
         dDA8F1gdYrgnYve5tHcLx83VaQeqGMsTgly5k0xEPp8VsygVLPMZ7zYSeCwpq5szlU3U
         KpXuT9WKUUMxs3GzOB+QwKalHKzJBLxMUJJc9r3e7n8RuU5wPsV3lLsR9C/XBUjhi+Dz
         e2oqAEaN55z13pdpyo5jZVMgPXrVg2tWdjLz8OnaR9G8W5Gn09qx3ByhXp+gtEG9Y7X6
         PDKFrC/RXf+rsdCfRVm2S3O98bHhRbq0C1vvharb1f5w0tp1vvppKjPgAZ6MLT16FlCu
         AiMA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792636359; x=1793241159; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        b=XOY4eqH/IfU5D85cqXWL2UUzIQCHh/cAJZBy0REQijcPdHKUIM3vsCya4h71xLp7S7
         VGP9a7qF7m/VDqgujVtKw8F6280O9TFAnjMNV5Cpz0HFG9bvi072SDUooDP4XFWefcvq
         4e7Vw6HfTs6L7H984sY5SiPVfWq6qAscbjuJf6r4ciqm9kTGkMvxMWIDfaIMj2PDrtlP
         3mByJUQCDguoreAyNhBeFG+4drT8m4QI6A6oi9klcIgGf9Xx0qgME6tTTXdDM2YS8H54
         JwVLENpQyXZJa44CrVtyA8pgC75bqasDUcYQOZ4WS8ZW39YmKctngUE52rtUxct8l0Vk
         TnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792636359; x=1793241159;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Q+uH7LfbW9ctIqeI5N5cYZFPbAGWdBnqHFnNZQRtHCo=;
        b=UMepFdEwcPZFgalgedC8LSRDeAc8BgeCLfPSC6S0KaTte3x3naUNnryN/YfaovpgVh
         UI2LBWg+UVCHEEIr4do4zdGy20nEXRi5N5Qs7ZVuz2p/Piwj7gAirOKG4idNM4VhCG1e
         5tlWOhJCugDlGNv/mYjV+2xlfl2AzQerLvRBUpb82YC9UDK2lxY5rU+YwBD6tRphC/1B
         Vwh30cl0Q+szb0iklhk2tkR3FKnhyMGmRnE/r3oNUZrnBWipNtaTTAxGOnl13/NARyO2
         nj2i61F8Xms2F8kCoj9pcmzSR1qpBIFdtLHCvsNH8CAvk0GBuUbYLjDPLOKE/foUHCck
         gp5Q==
X-Forwarded-Encrypted: i=1; AKwUvBxB9E75j3stoHexj1qF7HEeS4OVeefFoUmxV9suCFoEdCZaN8HVQ6Bn7p3oDV2k8ePAGUL+Ru/Nr0s=@lists.infradead.org
X-Gm-Message-State: AFq9FYLt3jWO1Z85Q8Ksjvy4e/KMhuw0MVQR4/74EYPtQZwknM4zp2VA
	LqJyLHbGiTg2G/ToStPdsqCXNe5Fq0PJgUq9a9pY3cbc4zjwUuk5gfzEj5nNH0M8IbBu+Gl3pQb
	Y+91hkVpbDZVuqCX5r8GlF5FNLTi8PkgdcAkoW0CqDmda
X-Gm-Gg: AYBFou02jTVRTq82UuMrCLAKF9AGkxrz1WwH2ZF7VAnfjKAOvCpSjjY0V/jDIrqdbv9
	WD8SM4vYQ49LKYdUwBnQDIPVpGYMDG3NbvyvZNtyobZhdoNVm/kraYNeaiu6DrYWfEVrSEqeuq0
	076BSVTwhBzehgejEHrAvMF64H1S9j5AgyxXuT9peKp8Ivlnn6gqVpUOg1WSQtqT7ie6DVPYtSU
	Vwe0AKccqHU8OUn/40gxCNzedYaQ1kL7A6vZNig60bGFrxk1xg4TD4OlE2FplC7CQyxqug73A2b
	DLPBK/q+KkSXvBSuXmPY4vvdL4lHP1lZnQcCKVXKWYDl9xXGmBY88c4RlQlJZfRoTsFyGURKn6y
	nZxfdDyIaXuPKnK/OOMLkMqYejbKn7ZpB/B33sZ9MB/8hwXRPHv8vpcg2q6sC
X-Received: by 2002:a17:907:9347:b0:c2e:4f16:fbf with SMTP id
 a640c23a62f3a-c4679797086mr354694766b.31.1792636359268; Wed, 21 Oct 2026
 19:32:39 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
 <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
In-Reply-To: <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 22 Oct 2026 10:32:27 +0800
X-Gm-Features: AclHuK9kgEi-QHylQHY7HMeWPzlEQ4T2NynHaEv25TGkNX-ohXQB3EsA_FVqaQo
Message-ID: <CALj3r0jg5Ht9UUJGryuNdJdegBkPQgSTPSE6amjCr0g0PE7i6Q@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_193241_926320_CE958F81 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vinod,

Gentle ping on this series.

The net-next parts (XPCS glue, dwmac-rk SGMII) are now in linux-next:
https://git.kernel.org/netdev/net-next/c/5e91edfb0e45

The DTS changes are waiting on this PHY binding and driver to land before
they can be sent. Is there anything you'd like changed, or is it just
queued?

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
