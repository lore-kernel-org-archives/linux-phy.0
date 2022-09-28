Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3927C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 17:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAp5jM73wi8KikAukUD1qGNh0WfB3FmJ3qxsy2medRE=; b=2ceB/6f9ndPC0t
	CrShO43EzcYv3D4Aa+LNAnio2608dKkpzPdaC+gxon55nus4xSRdVl0c7dzY3j8yhNYPj1MczDz/0
	A5VzNiJOx1P/C+f2jF8LI/IkLlDwCKBBmqNTMhNkCiMgXPSqeNOx4MHtsNeAcGhGX9MeDGd5rBpnv
	8c5F7g9ryzGyuemefjZp8hgMnZv50PIuDkRS1ZlN2r3+RDIYcAHcTwl9hom2ylXJsbRAKdQY5udd+
	mO09tBM/4Xy0f7trkATZP58ExNxdiU/dWTDAS1gXY9ENKExX2ebeuPdSM3G4uWaBeSyAfDI0UurqK
	iFjhfOyYH04ZvWI95IfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odao6-00HMV4-5v; Wed, 28 Sep 2022 17:25:14 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odao3-00HMTX-LT
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 17:25:12 +0000
Received: by mail-lj1-x231.google.com with SMTP id a14so15082406ljj.8
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 10:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date;
        bh=LLveNPC/uBKK+oW5nMcZ4j8fgkAZZZSanakE2vr1K3U=;
        b=DF75UBCgCORqNvJeBnIRoGdgRm1Qf/DBY/8DUJQ0/nGYJZ4dblozIgLxYWmktMl+ni
         pMKyf2sRTaFelJzfkU0QOF/EQ+vmh+PhqJKcoIRCa6l4SAWOWOmFTzFhYM5bfV3HzRlX
         cBNe0H6cDPXLJT50YZFnyV2I0JwSUiM18P9I5Zw9FrBSp4nQqIL1YFnTUQL6tDnGKZ8R
         kk0fvuK8tg0h8lREj/seyMbkt9+IPY1+vO+tkgkY8J6NwLISeXsRo3ya2ZeqF3NEfKvE
         GyBh40dPXFN5YH6AlVPSxDbfoP2h4XcO4JbWwia4Aw0Ohhmz9OHmqs8iKig4FA0VAbSr
         XobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=LLveNPC/uBKK+oW5nMcZ4j8fgkAZZZSanakE2vr1K3U=;
        b=3mNG78atY+Q6j3FIhNv01pewUZkK1rya8XIA2qm0oNnTZWm90q4jJZUu/aDvLXjhMe
         uRrHyyq72xGINoxSrMAWcEsGHCjg7OJ2FzjooALY+YeQP52t57wj5oGlsAiU/ClWU3Pw
         27A7zUX+PfFVNNZ/71lg3F8OD1YmU8TqT/6If7D+Wqnxcu1a8wVZR+wYi3/qseekozJt
         cKSxphptur0jSSvHuclcRfiA6kwO25Sd+NrdlWuQq8MFAE0P45MbD8R9H+EZPZaSiGRF
         EQJ1lLCxSdCY8U2K4YBrc6HGczWGlahd0sdFzOgKL8YE8XhS2QaC/wFNZxmLNzVbkLQv
         NX/g==
X-Gm-Message-State: ACrzQf3Hj5aElJYys8BKdBdtDRJ5ukrZVYMvM47jMiwGnu8eXofbVHKl
	zn55Gjrb5+1My/lhhejMcULjzg==
X-Google-Smtp-Source: AMsMyM7RW774YN8ALEcVWSVPaktJMWCyv4As8SHHLXGQagPlqVLdtHEBDYK691kHI8HOg1NMASUeKw==
X-Received: by 2002:a05:651c:a08:b0:26c:539d:440a with SMTP id k8-20020a05651c0a0800b0026c539d440amr11804380ljq.264.1664385909038;
        Wed, 28 Sep 2022 10:25:09 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.4])
        by smtp.gmail.com with ESMTPSA id s2-20020a056512202200b0049480c8e7bcsm526986lfs.176.2022.09.28.10.25.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:25:08 -0700 (PDT)
Date: Wed, 28 Sep 2022 20:25:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/13] phy: qcom-qmp-combo: drop unused UFS reset
User-Agent: K-9 Mail for Android
In-Reply-To: <20220928152822.30687-3-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org> <20220928152822.30687-3-johan+linaro@kernel.org>
Message-ID: <EB4CF062-87D4-4FE6-ABCA-526E7C8F4F4A@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_102511_728361_A80CBC96 
X-CRM114-Status: UNSURE (   7.18  )
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



On 28 September 2022 18:28:11 GMT+03:00, Johan Hovold <johan+linaro@kernel.org> wrote:
>Drop the unused UFS reset code which isn't used since the QMP driver
>split.
>
>Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 9 ---------
> 1 file changed, 9 deletions(-)
>

Reviewed-by: Dmitry Baryshkov<dmitry.baryshkov@linaro.org>

> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
