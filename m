Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0415C54E71
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rD+z0N9pTJptgea/Cd1Wor8q/rS8Md7m+Z3590Vupvc=; b=KtIwQYBoQC/oyC
	0wbEIgYIrkhkhe57CG5OpbFOTFAAFiFnlMfj+YWvKVEm96xq+qduWLPzdjPsz912SipXhZZwTbJh4
	bkN8qBuzu1ukbtvb4HEjZ4KIJdNq+LVoxpe4vK9HXzz5QCDYVI6XjBC/QGFKj6l/kiTGJjD2Fm0wa
	/wIyg9mByR5Vb9Ly6GkTegWL5hPv7DBmXGoB/FyQZlR6LQSi4Q/xp2cAqOHOgSO675hyaXRSyWbPM
	cPtZbrQog8AaveeGIKpf4w7d+UT2ysjOercUW+uS8jzZZJ7NiCCey7SRZFt/otPEEdMYvTilcTF8x
	kTcx87udfloPA9+eitEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncM7-00000006qBG-1T4v;
	Fri, 22 Mar 2024 10:42:35 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncM3-00000006q3m-2vO3
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 10:42:33 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dcc71031680so1762142276.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 03:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711104114; x=1711708914; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qJ1G2x/oaXXsE8SC8MGGRjcMdOfVG6tRQLbgz1tdtwI=;
        b=CZ7cpRC7MuJsmLzCQpRm9PAQlfVgP1qLvDJl+rSgpQa5z9KVpD2KNRcrK+n+puc6QE
         AMlOrKhI5Ih9zk2Pxt6I9GcMV48fho0YD49ILDU858uwGGK95km2V92ldH1rT2y5wxVS
         aHYKu9XrRTXAaD1+luDfXQgHfmSbsjo11HKxLR7jvpQZvqWc/Vc8thAukyDlrpJr129o
         H4QXX4g14budWPzdfU47GyfoZQ3PJxZLrloB7/SzbIzVTHcN4L/pGiy/cSpqN760oLNK
         AbT4XxneeO+mveL7WNTTJM7RGaH7oIzPoM2kSjEm6rimE1kiNDj8fx9/9pltG8ehEUWW
         mfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711104114; x=1711708914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJ1G2x/oaXXsE8SC8MGGRjcMdOfVG6tRQLbgz1tdtwI=;
        b=md+FDQjybwtssTm2TrgDBQ+Od/dWLieZ8mbaOxwo9YFWUaDE1DbsDgx51y/C8/kG2h
         u8wPNghXNaiwlnKCqLUflfnjokSmPsLZjIz03t/lbgA45CUnVOXRWGPI/tgDCKCXhp96
         euR4idJNeuO6vnmma6d1FRZC8ZxUsXGtR8FIt7wuLk0FEqxmPY51GkYkHEAzrG0ilMB9
         r+aQ90t3x89q1eFsjo87lPRMqi56pZhAdwzW+hOx9MuVend2wnIy4tVyc8mHPlW2C7b7
         3l+RKCS+rvO0ZIWNS0xkYaNS5V+xm5XbqAHSV4T54Yd0cjP6zzJfKMHAtKz+UsdGqL3Q
         2KXw==
X-Forwarded-Encrypted: i=1; AJvYcCXve0b3AZeao4yVHc9E1VMsDpcUpQ87bT9iIxvLcB6D0jnqfc+sFA256g0zTky9LF79P9w0vg5OUGZb/GbiFqJAlYI1kQhO88MHkSK2eA==
X-Gm-Message-State: AOJu0Yw1UonTfAWsxW5EohINa7YzNhaGWg6jrWqym6YZ2B+E2AjflQ6k
	tSLnKUG5R1z9+cwzYhXwSyqigCuIEAchRIp9HJI1CZv9O49AxOFRQtYjkk65/jpyhicFef5Y3UZ
	crSTQ4Z1mJCj8VjIqzrsAEJk95TfXTd7iFaLyOA==
X-Google-Smtp-Source: AGHT+IF+DVq3nhDm54jpxuWlZ1AandcnO6fyhOF34a+zdn1HBb50LNm0GahsR5m0NoIZpPjbkOLpfMdQkKElsW4T2Ns=
X-Received: by 2002:a25:b118:0:b0:dc6:d22e:ef4c with SMTP id
 g24-20020a25b118000000b00dc6d22eef4cmr1726459ybj.17.1711104114082; Fri, 22
 Mar 2024 03:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 12:41:42 +0200
Message-ID: <CAA8EJpoY6V=g2TpP0goj_96Yhg3Hdo+T3iDL-fK2WZCuZW62aA@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_034231_780989_E7A03002 
X-CRM114-Status: UNSURE (   9.03  )
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

On Fri, 22 Mar 2024 at 11:42, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> enable this second clock by setting the proper 20MHz hardware rate in
> the Gen4x2 SM8[456]50 aux_clock_rate config fields.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
