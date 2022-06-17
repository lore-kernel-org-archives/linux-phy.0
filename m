Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0597C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 21:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbXI7RcBwwC/Nk57uAA/IcHqsDCShcj8rLEfQNgu/Ns=; b=WKwy6pgYXB0xtZ
	kCDFKkNqr3HCC0OR6ciFBP30V2pEDnlTrT3h9Su8IlzqipoI7UUcbcUsU1Q4nQ9Juxj6kq3kwpGSQ
	kwx/SzkeeapGUryzr/iMlpU+EDehuPQtfsKpR9p1yXl2D78mEZ31FDThYbp+PkPH+jE6QbE3jjdEB
	uoKVkvFBZY9Ql31xM0MwSKDPNU9QQRfMt0FVE/GkJccciZXK+n8TKG13wdgHbv5UdXuZnE1j/qzjI
	9kr91CQ09pFMtqlB5WkWCYBc/xJkp/kzwY6o6jiD0sUEUMZz4MgMys8DxRox4IMGFsHVF0py0F6Zd
	8D04sLv8iTXydsYj37zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2JFG-0099lC-T4; Fri, 17 Jun 2022 21:11:10 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2J18-0095IR-LG
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 20:56:36 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1014b2752c1so6930583fac.11
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=MH/iAqLtqToQAlEnXkpP3+J+Zy8At+koA/Z9dM2NOZc=;
        b=kyEDKtsqodmuTT86QxhNaU7tgoCtWme2N7wlYwiTpVGVYAYBBqt1DAq/mT9BFnwPWo
         bQ1PITdzjrSdMZlt5iD9XIjog5xhqmEIF916e+ohiHDHLGfApEbwoww3ZTPADsLwjxZ2
         TEwBBCfZPVd4+eGNaGntLIlezdWVPhYRn3l0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=MH/iAqLtqToQAlEnXkpP3+J+Zy8At+koA/Z9dM2NOZc=;
        b=RZeoGS7qyBpylRPhkmlXi3yXJlY4V6fkjWmi0y8JbNJta/e+pC8cPZqOu863csCf1n
         eObBbuLsBC4mvmGS1lgDAqSMRIGk6j3KnFGK9A79WxcEU4iDOQpn9T7VqugUomhRrwdy
         8suqXgfTf+ObSTdydNvX5LstXN22YYOcujAG24lsjO++lpFDhJw7rFtfCUqQLopbPmfk
         5Bp0sP+CsT8t+HJy6o0YeBrq5tlGFtJznv5V6MOLr7HNK0WiMy+a5sTrfrsYB9O1cDNe
         mp9fOBBfUEG97Y/uJl7Yi0ScCPl2y991+XZ9BbSEdIKEK6zGBzIJrMQCZQLeIp404o5i
         4LVg==
X-Gm-Message-State: AJIora9e2XCtvmXd0TXrQzof9jSH6CQoBiA2jtLUk5WgVQqmriF1m1wF
	xl24DPJwy3Y4CxTTYhGqlcWwX1a1nN7rk+XFbTZ3nQ==
X-Google-Smtp-Source: AGRyM1vd690rXJ51SuzzgfI8BhKCCRgUEbObgJqZvik2f2hM6fajZLbLknhknAJbbPVwWpZOvXMPEzWPFbnPZniESuA=
X-Received: by 2002:a05:6870:b48a:b0:101:40eb:63a3 with SMTP id
 y10-20020a056870b48a00b0010140eb63a3mr6284144oap.193.1655499392048; Fri, 17
 Jun 2022 13:56:32 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 17 Jun 2022 13:56:31 -0700
MIME-Version: 1.0
In-Reply-To: <20220617103608.605898-3-dmitry.baryshkov@linaro.org>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org> <20220617103608.605898-3-dmitry.baryshkov@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Fri, 17 Jun 2022 13:56:31 -0700
Message-ID: <CAE-0n53pK-YDLkBTyHiF_AL_BEdOjCAt2RdqLemONzVsXx+Asw@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_135634_773103_86637332 
X-CRM114-Status: UNSURE (   3.82  )
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

Quoting Dmitry Baryshkov (2022-06-17 03:36:07)
> On MSM8996 the HDMI PHY provides the PLL clock to the MMCC. As we are
> preparing to convert the MSM8996 to use DT clocks properties (rather
> than global clock names), register the OF clock provider.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
