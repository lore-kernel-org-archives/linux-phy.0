Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB62C4829A
	for <linux-phy@archiver.kernel.org>; Tue, 13 Feb 2024 10:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIMazcJ/dJNV9356KyiYvAQGHyfKhVVo8gtCkhLgEeQ=; b=o+M6B2eCM36xwP
	ydsfR18sJr2nYYrRKaRTbqAJ8tRUYR1vBCZ1fVfvsUIvURZSY/Mx1pFGsQV0c0JVgq12qe4wUmjS7
	8iqKP+vmYzNDhb98pIa6ujKHs7ZCR/V7ncZoN8pnYZSZie5Tc8yjigDXHuJBkawbFAtdgoWOCCBLn
	xVDCs2HTve3jGNidwvF8SpgXdo8roV46j/mY16mUU51+RiCzKHGTBQlQVPsR7tGsFwO+BcE+uOzQg
	SrxANuINxGMLtg9kZobP8R+SO6sdbUy+U0zwCB2fTyKV/tb+mpkK7bU4ROfCO7rLCLjxQ63mDK7AJ
	aqvuslVCsJCR35d+L1wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZq39-00000008psO-2U7I;
	Tue, 13 Feb 2024 10:30:03 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZq36-00000008prW-1Tn8
	for linux-phy@lists.infradead.org;
	Tue, 13 Feb 2024 10:30:01 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-dcbc00f6c04so1172019276.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Feb 2024 02:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707820198; x=1708424998; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+EqDonj7KQZLiaPp6D4ZvH1t+lrAEwUNc/fnEAHBEOI=;
        b=Acdf2jJYGHlb/OYNyQ7xy+dqhd/a2BLPlz05OjcmX46rleJQT0va5OHtwm/CkQTfhd
         ukE8d4Rle0e4p0nW+1/mVrTho5Kvc0USIioWHJ9NEJI8ZllnuU+dUwiIJ7az4FkjfX/8
         csc1V+DWBoUfoeZUgF/f1IOrCteIsff1iDh1k/vWL/IHoBMf8+eb91Jyc8yEjXbvrv99
         cdPcvSYcrIGpBSVNRNf1xzalB39A+YfRsUZtVJuFEB/9UrzWqETgObH6z31eKcrjeuqH
         nMYny56gn/671s0scF9kelDW68/qKYNjIxxRtKM6VooHI/5VHXnAxxwBaxzrVcmQtN2n
         sQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707820198; x=1708424998;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+EqDonj7KQZLiaPp6D4ZvH1t+lrAEwUNc/fnEAHBEOI=;
        b=ggsaEOqjnbUb+RcdR/MvCzRKWsZy9TTCzst5PoiuwyKYNzh2Ho0nSjLUXBYqk8+Nwq
         qJkk1e4twT+q/C5jAEWQA7Gbz0T+/5Zyj1DakcvVHKJqOrjV/5+ffBNeIl2bfO4WoTMc
         DZD6B/8LIHYSn2I1AfY+u+8WC/hendEsy+kVBQlLPb8yGdTN3HP2Qp6JKnK9OpJ1E6a/
         TMxe1NDV0ZjIdS8yobuxN72j8G7BytII3ZOX1tD7aWIoP69dx/TEMabK3Ec1e7lWISYC
         H3GUSneYiA2srloaMptqAh937TFZCXgySt8pvIaInsVvDhsqt111Rg3S0QBN0FQHwySd
         nC2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVPqd83TEswGRQHTZfQzz/Mp1h+2Qkz5xzZ4ryR3tG2Ezm8d6sJKq/BfLhdSpLdzkNLkHfmN0AT12AcVr0mjBroGOvGhYPATGgwisW+EQ==
X-Gm-Message-State: AOJu0YxO8XbrlgXXIwJDzEy1TRQssqp6LtMk9pM/f8GFyeReKGLH7frH
	wEUW+MkXAYcKGiGe/XKN+2pZi5jT2m8EHdrnvPYeAgu4sKQdosEPGUxbcXeC+/SwxT/7lZ3GebJ
	dulLHtGD0c65K56Hz8DrVRSTDSIx3o23oOgrHCA==
X-Google-Smtp-Source: AGHT+IHkdJx+zFat9qPbr3h4Rdcuck1pBATP4FKcmKR8VS5uJISAam7tCEk56SEDoapPdlF1E/YwhM52Daf0RNngWRA=
X-Received: by 2002:a25:ad45:0:b0:dc7:4313:8b6f with SMTP id
 l5-20020a25ad45000000b00dc743138b6fmr7824715ybe.54.1707820198159; Tue, 13 Feb
 2024 02:29:58 -0800 (PST)
MIME-Version: 1.0
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com> <20240212222232.GB2655166-robh@kernel.org>
In-Reply-To: <20240212222232.GB2655166-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 13 Feb 2024 12:29:47 +0200
Message-ID: <CAA8EJpoymmOBc3CfNHJKBT8BNje_s2a5uGPde3QHYv3vQ97=-Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible string
To: Rob Herring <robh@kernel.org>
Cc: David Wronek <davidwronek@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_023000_428757_2A4587F2 
X-CRM114-Status: GOOD (  13.70  )
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

On Tue, 13 Feb 2024 at 00:22, Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Jan 21, 2024 at 05:57:42PM +0100, David Wronek wrote:
> > Document the compatible for the UFS found on SC7180.
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: David Wronek <davidwronek@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Should have been picked up by SCSI/UFS maintainers, but it
> hasn't, so I applied it.

And it now triggers schema warnings, because sc7180-ufshc has 7 clocks
and 1 reg entries.

>
> Rob
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
