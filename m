Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B008DC71135
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 09:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBRFmBvR5LL2pjCYCgUvmkvgZm+Byv/8RgWRhkJhdmE=; b=C9U2uqwsVQkEb3
	HE7ElB7juU4xMZpk4A6J4NJMk9LqjQMU1Qtdai7VKaA856isxUqNzvSeR2DbQ6F9IN5jtYTklgfik
	at6+VQKEfxqAytjhasMRb/y8+1nTeL2vgWdcLcoGebvDkOXNo7kT8E1E5WTeEQDfJ38b25J42eUt0
	EJ6B1zxI4rgTwuI46+yV0zEkl36XIQKbrBn/pA0q1T5u/RwroPhgCZsHgybm07EdWYmQUXD4kRcRh
	90Sro6JzeLYaSSrxe6Klb2iHTj4zixw/vPITkNhM35AcX65vhkQsqr7ow/iGlpfhF//mG2lUirkIX
	8WGXVl9guvc+j8d/N9Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjb51-00000001HVf-0p8y;
	Thu, 29 Aug 2024 09:04:35 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjb3L-00000001Gw3-44Ue
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 09:03:04 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5343eeb4973so596674e87.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 02:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724922169; x=1725526969; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yU74Z1taMGbV+l39s12NXbpyp4bl/SLE0B6UFkVkWLE=;
        b=cWhUymrFNSbpcUx/bQx7TveXl8tlvKuGLyyovRaU75FCQkXudH6tNC28iBDXLSbKeq
         zmmgFP6VquJLKxKCYH8ldh2kMikooEq3LeCuB7gI8fjPLClU/hqkFMMQTAyzapBnvN/0
         ThGzXAxpMJy3/FkjXLAH1FHcIfFCVjE4cEaa+4RysWT3eJdMcQkoyucsrVsukSdUZj9i
         2C8aBVd8cJCIhBldLe6EOXHfxYU9UynAH8a0UZ0NbXBn49+hy9mUZqb5PfzqcRk/B9Ua
         BgQ2kH+iXrewd3Wu6lLSnjTd+xFLDj9mnz/KsKC3lM26zoa60wKng3wVF6no8hp2cmrY
         1qeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724922169; x=1725526969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yU74Z1taMGbV+l39s12NXbpyp4bl/SLE0B6UFkVkWLE=;
        b=YTRUaibqw6oLw+MUVSp53+EM7izCheQ7lx6ygnvvdAq+qysYhUHi/iVUxMeNsQsvOo
         E/S+/1rqVn1tckwYbTJrkOeHa/KJxH6YYz0HWL1MpLDKnyYVoNj3iH+IDUFfIcgC5BlJ
         tlYC4UJ9y00jePnocm3gprtgOz+tx3m+jq+qkjEIGJ/Ap7YnHJWvF8I9DPBOzdxiHZHd
         TZryWtqKsa4Buoa4vJhavAQnon/HLqTx5vCJKmOVkHnvQurndiDC224aljWOvZAkwlO1
         53E4TXKo4EvlSRACZngTkQ6lm/CGQULnuoRSSw4/pFQgTIKrvgmuK2x9yUZM+PW74etw
         eYEg==
X-Forwarded-Encrypted: i=1; AJvYcCXTutZPsA7ZMN8sXXmK5nnKdgLyUCbVaoLyLWQHok2DlzbnGP5Qb1lLwH7cMsHj0gcnrZOy8JoEF2c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzx+sDmkpHDPYPj83jbonMLAUWfnlIbcTbumqDfqTXSPDTLNq5V
	eazTGTmSCXRiBOClguViwLji3jrZvexQHkszJeopE1hsFBUK4l7vUs710XEpaHY=
X-Google-Smtp-Source: AGHT+IEOG/Fqff23S0qeqzOkwCb6zYTfMyOgmyR3JgJ5MsKUOkzSuMuafc5IyicZkjqzBwKINyngaQ==
X-Received: by 2002:a05:6512:baa:b0:52e:8071:e89d with SMTP id 2adb3069b0e04-5353e5acc6fmr1722676e87.40.1724922168807;
        Thu, 29 Aug 2024 02:02:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407abdb9sm99698e87.72.2024.08.29.02.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 02:02:48 -0700 (PDT)
Date: Thu, 29 Aug 2024 12:02:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 07/11] phy: qcom: qmp-pcie-msm8996: Simplify with scoped
 for each OF child loop
Message-ID: <3omsbwonwputnyns5h6rq52bsafqb6is42jk6ty5pv7z2wmyvs@jeb33bmeotyh>
References: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
 <20240826-phy-of-node-scope-v1-7-5b4d82582644@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826-phy-of-node-scope-v1-7-5b4d82582644@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_020252_349420_34BE304A 
X-CRM114-Status: GOOD (  10.20  )
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

On Mon, Aug 26, 2024 at 12:07:23PM GMT, Krzysztof Kozlowski wrote:
> Use scoped for_each_available_child_of_node_scoped() when iterating over
> device nodes to make code a bit simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
