Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4424EC46CD2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 15:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tv52aIvzKzSii6uSHPqVRYLNdud1Ftv2B7ty0ISpfeU=; b=rQtm/fu1t7iplL
	jY+tEKVKVAM/F3pw0QQPE0PCNUCVWWQj2q2b8w1XOsYi1NzBVcRAeY3BgzUUcnOEAhJYXfwypDey4
	zsBdRlcPJLxpru0xkr+L7aO9kt6rab7q83ajcdonCjkXK/HSKjfCZgcCP0/6BLF9J6d3g0xbWQCrz
	w+2/tg/pRoB82OR3z2iK6/UHfxE+tcriF0I5aPLwDy9y8LZNreYWmb7Jww+4tYGvbT7xUrPj2i21a
	lDs8wrOuEZP+8lzjiZT44vSUSCknJLCLj0Ruc13vIvgNog9TWdbZWiyyelGucW5dIjQyZeE8Pt4+a
	iive/y/11birTHK3NuHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEQk-008kBQ-03;
	Tue, 09 Jan 2024 15:54:18 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEQh-008kAV-1A
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 15:54:16 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5f3da7ba2bfso31487417b3.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jan 2024 07:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704815654; x=1705420454; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ldk2xHvhyxy1bWq9YLzjnpGm/58hFkzg9pcqfNBBmU=;
        b=lBE3G2SaW7CZ3YoMjtHokmA+kH+fVJ/ABXDIcbBtEnFJ0szJiMmA+V2x6SQQkm0gKt
         NEWNYFULwcJKBhfQR6dmi3LqI0OHgjnoT1NYRWsw5KuY5RvCmxR6qxCM1/e8ewRW60aU
         eSRc3aT8gRN+9gHcabKZXLEnZhODQnsqqAWvSLCZwP1V7FbZY0d0I5KS/ZFImQXV0TUC
         9QQ9QMjdh8oAKITrbRQn0VSxWk5nCOxWDyjh9P0+eJem1cSSGJ1Ix820IEP3pzIN5ONK
         1ADZc5iFjozsxqgGN5Jv8/brsiKCZZnlI/hMNbWCJWNCF7jIjxgHsLhwUnc8sHcyCkEQ
         mqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704815654; x=1705420454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Ldk2xHvhyxy1bWq9YLzjnpGm/58hFkzg9pcqfNBBmU=;
        b=a6dcFKmDTF8yNQL5rZJDqW1HusSu+ZhRZKzwu23/o/L9BcscYvPpVJwpJBbY3YszF2
         w9M40JXVSakbC+0dLEoODocUxy8yXC8K7SViFWgehugSsKXss0vkbw2td+eRfwfohQGk
         QTsk0Pfyc/JT3fiKWbkSqM4YfmKyFsrxEC8FB1lowdNCYPKLQsd4nb/TSffvSx91el7E
         4HL38sF4GVibAl25hWfoNt2eTTjfsSPWJ5D5qlOMQ8yAl4z1mpm5jEmokRgaoVXTnc8U
         smBHimVFsrVEIuFsNaXcmsocY6it0l+WoYSNKYlCKKJRGGvJEIul+T8BLPB1E7VSrEgY
         LyWA==
X-Gm-Message-State: AOJu0YzlpK0y6t55vcbIik+xCWdo/61Gy0WobYt6colkbYjscyY8vHni
	cubTG+6y5wR0B1HGdPxLQQwoHDYehueKOAORnN3NrEEyx/simdzgaze5xw9A
X-Google-Smtp-Source: AGHT+IFQLx02meGGq6nOyBFkOTpO0En98GI9sGvhPt+XmfUE9q14ZOEEaIb6XJ1QuivkoqSvqoF4dv8hq42FRAIxTWo=
X-Received: by 2002:a0d:f1c2:0:b0:5e8:7687:77c9 with SMTP id
 a185-20020a0df1c2000000b005e8768777c9mr4837433ywf.1.1704815654195; Tue, 09
 Jan 2024 07:54:14 -0800 (PST)
MIME-Version: 1.0
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org> <20240109-phy-qmp-merge-common-v1-8-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-8-572899a14318@linaro.org>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 9 Jan 2024 16:54:03 +0100
Message-ID: <CACMJSetxG33D5JH=2N5LtGuznp-Q_6Bv0RL+jwCPaOsz7LwV6g@mail.gmail.com>
Subject: Re: [PATCH 8/8] phy: qcom: sgmii-eth: move PCS registers to separate header
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_075415_401804_E483E133 
X-CRM114-Status: UNSURE (   6.98  )
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

On Tue, 9 Jan 2024 at 04:04, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Follow the example of the rest of the QMP PHY drivers and move SGMII PCS
> registers to a separate header file.
>
> Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

I'm typically opposed to the idea of putting defines used by a single
driver in a separate header (for what reason?) but if that's
consistent with the rest of existing drivers then ok.

Bartosz

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
