Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE71DC04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AurNeEoISisonNm7ykFwdCbNM4b3JifrkZu4x4PP58=; b=jZj3Pn4yX1f8E0
	0fhgG81cREWZH6rX/Tmny+iQB0rJkSuM8uCI5gUsmi4uRgyJIscTjP3R25ZlSLkj3pQs2e+Ky/I9X
	wnfQS+ExGyww1xZdsQ2/XEPW/0MdYomRubEwUjzDwz3zIA6l1VEd2m72Ui/KWAA2jvO/XpVCfKieJ
	6sQAQDY6DQVZxjwgwGLKTMCBlc2pGzkqt9yO9iyT8FKuodmouFTnjGF7BxGGwPk2dhJYyuUpVHTNI
	aSe0vnwIwl+gbJiR/kMQFKbDpG15oUdmurdr+sSoQKetsJmrA7chcK9+CwTIS0+WJjOVkuySHojd/
	azphQ3mWY72yRsqSKKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd8P-000BXw-9Y; Wed, 28 Sep 2022 19:54:21 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd8M-000BXU-9I
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:54:19 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a14so15487816ljj.8
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2ZLG2KC41uqqU7owxniwJkXOna9QouCniVvRwX+2hQE=;
        b=V9fbXz50h5ugIyicyu3iwlMmbCD/QKwWgp/1OHAGgHE6aJ6vtjAj8BQoJysQQtkZ6K
         bmprbpyk4ZnLN3Ab3DOSI966806GRir1vVsjOgJ2ybDziB/QeVuy6MGi/Pe2GbygGrKR
         Htzrjpa2UDVbujOQPbtOUjtHFPox34vdswgGe4bhSWEiwZWU+siEsyoh4/MEAmPMwoZO
         HFMD7g9rNylyJXNdwTwcUmpQtf/ohz5uo/fFnbOMCns0sC961+PzIoqa0uQzStKRVUWW
         EizXfdwMNH1+5A4mBSlMi8tscQVO1U695FdaHQLewSlJh7OeEVu/jaZi+ZNgNAQpcte9
         etsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2ZLG2KC41uqqU7owxniwJkXOna9QouCniVvRwX+2hQE=;
        b=RTO/wYfaGsafpwTYPY0hSE8P4AZC8XE8nwbVlRUMf+/gN3oDFEVvF5wKxZmeswsShw
         ZshsC4nFe2hFG/9nfayJ85kZjwYztjGzNdqggu1adx/YVoN9i3wqfi89fzOdntVWp/WV
         /Swppo2FuwkqrBEAOwpCbiDMAjZBKeRVQeuYU5AIrUJxz/dbjNbmY0n6l4ZKoWc+R98e
         +gRCQVgahkG8pSghzdtk59rAw79y4+QAU1RFKu91Je7LDbO6MZyss9byI9eVdHuVp77T
         M42z7t8tDRkSOhKprBe4TyQRo5wKku8yeYj0lH49sCHm1Nd/gp9K6Bc403k47kQau6eN
         wCZw==
X-Gm-Message-State: ACrzQf1lBp9mqkUvr1WC+yoHL0K6o3vNKSfMIzqa+URJed8yCssQlrTL
	g6tHAXxcQWLVrdaFD0mBpCqiMw==
X-Google-Smtp-Source: AMsMyM7IB+1z/6d4whb6N1kyhq69FGzIPwPKCyyD/rDeDY7HIua6rhFqmjg8lGgXr6a25l7MJUXDgg==
X-Received: by 2002:a2e:958a:0:b0:26a:a393:4480 with SMTP id w10-20020a2e958a000000b0026aa3934480mr12072300ljh.490.1664394855969;
        Wed, 28 Sep 2022 12:54:15 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p11-20020ac246cb000000b00497ad9ae486sm563059lfo.62.2022.09.28.12.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:54:15 -0700 (PDT)
Message-ID: <70baf417-1c2c-932d-0b2b-048f3809d4ab@linaro.org>
Date: Wed, 28 Sep 2022 22:54:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 13/13] phy: qcom-qmp-pcie: clean up clock lists
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_125418_375485_B0FF59FA 
X-CRM114-Status: UNSURE (   8.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 18:28, Johan Hovold wrote:
> Keep the clock lists together and sorted by symbol name.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
