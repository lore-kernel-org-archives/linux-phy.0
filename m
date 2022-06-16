Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B70C43334
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jun 2022 15:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI5opokr0XqoH6cQC8bbR7CGrt+DnU8CpiHPdDyU+3M=; b=tyH6lwCkTpDNZv
	e93+j01eDtwrUFmuH5iyCcIJE9zAMqiX8NziWXGblDEzkZ5oIij2BJUM5s7rCWsLA3huvQf7zqBp9
	ekQZaxCCxSDzgBCoAGFkLCJQFa0Jr1jwLhV8reIc1Mwtr5OtCk02rffnjKYEJkcKHbYh5cqM/NhIM
	X3mBlAeX64d8RgFdcLP9+m2lp6jB+Bw84QgwbKzMUe+id9BQGqplHluBCU5MKBcytO1I4xjPW91Kn
	b+0k02CZElzxo6SoGpLhuE4VbpRly7lmldLr0wpXD8E5mceDiSpxnMRxZEgTYrNlzGEeZVtPwUzfr
	P7zF/tPwdw+3lDFKH9+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rds-003DfE-A6; Thu, 16 Jun 2022 15:42:44 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rdp-003Dd8-4D
	for linux-phy@lists.infradead.org; Thu, 16 Jun 2022 15:42:42 +0000
Received: by mail-lf1-x12f.google.com with SMTP id c2so2854320lfk.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Jun 2022 08:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5dVDuCM8VRK665zH/HV+gDuurZlzqRaw3AF4f+4QEQY=;
        b=YpSpNH3K+KjKkXCuVKrFBcVrP5SWlYv3RWSSUdRdHJUnj+BZbndMy/7IyaCo4ZQ5rb
         d5YerNu+HSuaHbXK9sCxIH2I4yswgUI5cbWPgvOV+jsqmpGVVOzFPK8wchjbBtnuyFNC
         yiHYfw8thWjslkqgb7sZ31mB5KIv7561wqhQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5dVDuCM8VRK665zH/HV+gDuurZlzqRaw3AF4f+4QEQY=;
        b=urgpK++xLAIKOtSc/eAxiNGFrjahI+YLNikbnh2agS0+qfVF2rBYtF1CCVeGzetzbo
         zFcgXmPZg5qRML3qvfVM7TzzkXlM+QbbBKP/ejlN9Hilv7evJek7KhEr6a0+tPqfPHvs
         nHyC9lqD3AWoWgJTf7Bue/TiM31efp2Dq+ugOxKlzmBIIl+a/iYRJOSap3IebfIhY1Uj
         qj0XnBUge7nZhQLIiFFuROBkoxbgTUEQM1fGWL+hlvam/em7OuLcfFy0kn2rj3j3Qspb
         vyVWo2ipEDR6UNAQHvtt5tFJm1RCFYYpmqEj+WjjSopyWbp26S1pkSK985BB/3lj7rsd
         e2Mw==
X-Gm-Message-State: AJIora8CN85eEt41bdhCtDTFpSQDlQtTyht71iOmrEiBcQSIVPJjjWkX
	zcackXADZddEJUkEvExxR78kMv/I9ivyJM9iuX0=
X-Google-Smtp-Source: AGRyM1vqYm/jEF+Nr2zSruBrfwW8pNFDBlTBS3fkI1Q6jt8QGU5iW8ypdPnNUbzOA3kS0nbbK5tUnQ==
X-Received: by 2002:a05:6512:32c1:b0:479:33ba:4680 with SMTP id f1-20020a05651232c100b0047933ba4680mr3001914lfg.535.1655394156335;
        Thu, 16 Jun 2022 08:42:36 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id q7-20020a19f207000000b0047861c163d0sm281638lfh.37.2022.06.16.08.42.35
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 08:42:36 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id i29so2830351lfp.3
        for <linux-phy@lists.infradead.org>; Thu, 16 Jun 2022 08:42:35 -0700 (PDT)
X-Received: by 2002:a5d:68d2:0:b0:210:31cc:64a6 with SMTP id
 p18-20020a5d68d2000000b0021031cc64a6mr5183133wrw.679.1655393766098; Thu, 16
 Jun 2022 08:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220425210643.2420919-1-dianders@chromium.org> <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
In-Reply-To: <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 Jun 2022 08:35:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
Message-ID: <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: List supplies for qcom,edp-phy
To: Vinod Koul <vkoul@kernel.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-phy@lists.infradead.org, 
	Stephen Boyd <swboyd@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	freedreno <freedreno@lists.freedesktop.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Sankeerth Billakanti <quic_sbillaka@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, quic_kalyant <quic_kalyant@quicinc.com>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Andy Gross <agross@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Rob Clark <robdclark@chromium.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_084241_223092_ABD8E988 
X-CRM114-Status: GOOD (  17.59  )
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

Hi,

On Mon, Apr 25, 2022 at 2:07 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> We're supposed to list the supplies in the dt bindings but there are
> none in the eDP PHY bindings.
>
> Looking at the driver in Linux, I can see that there seem to be two
> relevant supplies: "vdda-phy" and "vdda-pll". Let's add those to the
> bindings.
>
> NOTE: from looking at the Qualcomm datasheet for sc7280, it's not
> immediately clear how to figure out how to fill in these supplies. The
> only two eDP related supplies are simply described as "power for eDP
> 0.9V circuits" and "power for eDP 1.2V circuits". From guessing and
> from comparing how a similar PHY is hooked up on other similar
> Qualcomm boards, I'll make the educated guess that the 1.2V supply
> goes to "vdda-phy" and the 0.9V supply goes to "vdda-pll" and I'll use
> that in the example here.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Even though patch #1 in this series should be dropped, this patch
(patch #2) is still valid. Vinod: I assume this would land in your
tree along with the first two patches in Kuogee's series [1], which
are related. Please let me know if you need me to re-send or anything.
Thanks!

[1] https://lore.kernel.org/r/1653507433-22585-1-git-send-email-quic_khsieh@quicinc.com/

-Doug

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
