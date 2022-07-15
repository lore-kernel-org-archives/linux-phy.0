Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1704C43334
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 10:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVQ1EzWIz9oSUdD4OoSSrcZXHdSuHNVqDDHlObvn2J0=; b=y1iIW+WLm5K2fZ
	JivBKyK5n/BezZ0QcnHOxPaNU6MgxVn53v+HZ3erSfsk7MjUZeJ64YLwgSdGqunFsEVD5wFiAwVJw
	W6HW4FdHV41Vlb5aII4cUmSJ1CPG2xg1MNEb/HOURSSmn9V5uhRvi+w25O+dqQTzDagFUS7qYKF1q
	vT8yX28TTDD66niO0eJTU/1nVHlNNo+D5qsKI9cp6tZ0ML3O0ZVTbsXxvKTSni7YsjIGyyatNkvUC
	TYxKAvLqBQw+VP72NQKQd7A7bGpnxQ5z4FYz0iDDqDED+oBm3OIOvf9QJ+6cbR9j3+ayDYriLL6FL
	AJ81VlGQ4n/4xr1WfOpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ1X-006SPo-SP; Fri, 15 Jul 2022 10:58:19 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ1U-006SKv-LL
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 10:58:17 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id r12so3440143qvm.3
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 03:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QjXJYU8Ca6zEedr5pwyFGi7gqZxYyLWinYBmJNfXr0o=;
        b=yAw42Riqh9SF51Nq5en1JtNN5JqGWpNDiFFBWdqthtOO6QqwS7YFrGQbaAz2+Zb8Wp
         +SPhcKkvb7k6thRa8q1b4AwjO1cONFF7jzbaUB5ORBH157jtnvfhqu540iBT2uplwl9t
         wS7RqwZM+qu0t653Wtxhm103zENWmn7UfYY6u3Twwvv5rz9lTt26V4nBq2vajfDPK3A7
         72W5ulCD4P3D3as3Q/iI02PAWRe0sZVUsXxo34gx4i3XU0KpLMvE63gY1S2E6w0vHmYo
         Djsca5v/eNyBaYLkUcEMPmiitWoPjDNMwd7kRb3TRr2FUVgkMj9DMV1G5fVjBsUeWf7X
         LuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QjXJYU8Ca6zEedr5pwyFGi7gqZxYyLWinYBmJNfXr0o=;
        b=i1RAIN7Mhm+Kw9g+0OF1XBpkmalJtIDSv2+A1f1UPqRJt4XAwgsgWjmcHS4+6n1sFb
         cCaxfqZWlwog04md4o4c9jslRqXIgKyXnbQzck+7Bfo4GkAH//cdk9YDZafNFqyGlWSJ
         aq7S3ZX0Z6Ji/3mAum785awh6AtJ9Hc60ou+mmzh13QaMnLo5rlXu8GzEw3Ioyhnw7lx
         X3ZprjnkhyqDAd7L+YYTiQbYFZwDxE94b8hsIQgZL+M4Idv5GyDm0ad9L5SJufVSUYFT
         TZ7BcaAaW+2EzJrR/3UsekOEKhCtIaapK7i6l3RU9A9GCyvLHosMap+Ylw4/KQQCixA5
         Uj/w==
X-Gm-Message-State: AJIora9aSjdKwEeLqL88xIyfkUUVrxh2oGnXlKV3yCduQjU9TtnHFYqL
	nL+0A4b4jKc4EWTzDe+5V4u4+/tT21MPz82zWEzOwg==
X-Google-Smtp-Source: AGRyM1tEIsAaCJg+HSR8qR8BS2VnxOA/YbkmYpyTrN1q01vkMCdJKkz8yJ46Jcn4M8eui61Owe5WqQlEXDnqA4fUe78=
X-Received: by 2002:ad4:5f8a:0:b0:473:2108:7fe0 with SMTP id
 jp10-20020ad45f8a000000b0047321087fe0mr11229869qvb.115.1657882688188; Fri, 15
 Jul 2022 03:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220714124333.27643-1-johan+linaro@kernel.org> <20220714124333.27643-29-johan+linaro@kernel.org>
In-Reply-To: <20220714124333.27643-29-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Jul 2022 13:57:57 +0300
Message-ID: <CAA8EJpoBhFyoUrUYM3+gYk4hvORvp_3hLYJCF82-LR3_YxLFsA@mail.gmail.com>
Subject: Re: [PATCH v3 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_035816_726454_218FC589 
X-CRM114-Status: GOOD (  12.73  )
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

On Thu, 14 Jul 2022 at 15:44, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
>
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
