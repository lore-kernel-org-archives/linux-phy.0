Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE37C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 11:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBIVrYlp6xJi5tZMN4pwnrjlQHzCmSDzrmpVoztAq0g=; b=khSc4zZaXgcM5R
	LWvjZnGL0O/+btaUHQ36WvwBnPd00d1jjGTGCtMRV97makAd9b2njQtdMxjmWE13KIYsIWm3TeJKm
	AkweLL/UudASM6ZvaRDoNqjlg0vzPnMQu620k2tKPAukS7jjIdTCRukM7czvQg5+zALIWSocz073g
	NS+vGFLvGaLaTDg/5J+SBuSjJ5zauPbq/eJJU4/7SxtEqHYejlDweVM1j48HuoJIO3V9+cikOS0n0
	jersuGkSJrjWe9+hguNOsW5NCkFQBBoiFleLid+SWV6uEz0IkG7zK+FWCgrQayl13Kwwr+xd+Elj1
	dUyc/Ay5bJUQ7GRcpFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pffrE-004HCq-1N;
	Fri, 24 Mar 2023 11:45:20 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pffrB-004HBu-17
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 11:45:18 +0000
Received: by mail-yb1-xb31.google.com with SMTP id k17so1735703ybm.11
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 04:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679658315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q8La0xLWr6gLifT69tT50MzQgCi7mxaTvUmaB3nLYfU=;
        b=gg/+RIP5i9bEJIO5JfQQ0JWBTcP5RSxSH0aRa24dz0vsLvJSS7HQUSTcKU73n/IwWG
         W03jArsRTdAgv8O/TafI+jMoVkIl2PEc0LIqW0tUBW/Yo+tCVTi50WdA1RqZcVucrzeD
         vK+/hhNfB6gKlyblScmO3Kd+P5v66dyy1nlOmpY9Z9A43oi5H5eMvNWUcD52j8hkLZVV
         elRn1rYPAH7Z0zncI4C+pQcTVwbBsZ1Cekdp0/sw7K01yf6uSwaSClU98sr3mGoG1f69
         liCA/c13zLXG3P+UlFsCwBixp/T1AYgxWYGb354ldbCzBa5AF/jCdLGVtQQgV1XdlU1x
         O3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679658315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8La0xLWr6gLifT69tT50MzQgCi7mxaTvUmaB3nLYfU=;
        b=1ryZgioVKN7Vu8qN6VUwcYcM1WRO/SdTJ17ypPG6aqU9ui7uVbbQaPjk8kMDT0hHxK
         tu2N65ZP5i3FZXeNGYCTH87Kkfbs2xZw39NS1oLmvBjLvx7AB30w/LFWnplVbnC9zezo
         MQRX+IfHFvIxvazwC70xBBhBgwEx4Zp+zy0f6+TvAJXz0j4PBc/VR6HYnU6YK/w9ru+E
         JK56/lelGHvtnau+uWIt4qd5/M+3ARIznaUNLSLw2DPxk/tmTWboHpHYkyG3b5VyQ68A
         4bPNMh4HIYOx0E38Q5HFi7YK82/qUzacZvi3Fu6BDyPfD1dFvkoLN9IJcVVyr36Ap1z0
         gZLw==
X-Gm-Message-State: AAQBX9cW34ROZC9G/FAKjzcXEZXaeGRgoLp+iJwUw3G4GeMJovTwoKYU
	M8PwRzFjo/XDguelX7JJkWnLMBu1k90xy3V866zRJ+T7mlBAjZU9KNo=
X-Google-Smtp-Source: AKy350bnVsaKrHF+n3nfjfnGoH5sED0NRDkUMhCvoXdMDk6x/u1CuTavuk6oYVDQvR/CijiLs/zox8VArwd9N5T5Dgs=
X-Received: by 2002:a05:6902:102b:b0:b46:4a5e:3651 with SMTP id
 x11-20020a056902102b00b00b464a5e3651mr1114081ybt.9.1679658314955; Fri, 24 Mar
 2023 04:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-2-dmitry.baryshkov@linaro.org> <083a8dc6-71d0-bcf5-664a-66c4c729399e@kernel.org>
In-Reply-To: <083a8dc6-71d0-bcf5-664a-66c4c729399e@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Mar 2023 13:45:03 +0200
Message-ID: <CAA8EJpq2AoR+MePE2CQQShq=KO3NO+Jd0gVhhDUYq1NfV67yvA@mail.gmail.com>
Subject: Re: [PATCH 01/41] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_044517_390041_4BF2D037 
X-CRM114-Status: GOOD (  13.11  )
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

On Fri, 24 Mar 2023 at 11:43, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 24/03/2023 03:24, Dmitry Baryshkov wrote:
> > Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
> > to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
> > the child PHY node or split resource regions.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 394 ------------------
> >  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 236 ++++++++++-
> >  2 files changed, 226 insertions(+), 404 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> >
>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
>
> Since you skipped DT list, there will be no tests run, thus this is
> unfortunately a NAK.

Yeah, I should enforce a ban on me sending patches after midnight.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
