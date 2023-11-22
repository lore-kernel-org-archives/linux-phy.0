Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF7DC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWQgy+Vxcmn2fOPfZxG24Olyd0MEWBxJbq4NbkdbpnE=; b=oMWVP/umGDQSAa
	UmbxS9oPE2tG7KXGqMypd/Zn8huu/S5EPqPp78exBE+c83PB6Lh3s6Z8B64253cLJo5729UFxXlkv
	kao2oV+YDTuQZPJ+CtWAjSWPvT2eZGCfRVYqihz/4DO1dQkkgyzaVc3/aNFJA6i+7Qhj+6d6rzSwK
	QMIjjDK+x2j1rTP5uWgx2qna6b0s6GxRtUwBYFhjlIsKPGiuqdBDxlv/ZLXF9Iw1wxCrDT/WC2f99
	wotaoUU4scfaTeWrbToRDqqjUM4EOH8ubhrOEiEl0lQ281O15X9SoxcRF2YkJZm4zXmBs9YZ1BeXl
	ezMuyfhOeVkNCBwxUP5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kCk-001OlU-3D;
	Wed, 22 Nov 2023 10:11:35 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kCi-001Ol9-2M
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:11:33 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5cb4ee00da1so5821297b3.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647889; x=1701252689; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vP/wEMyyWeZXjpRHPyFJj2NtJhEcodvweIGAx/PKOf4=;
        b=g10Ax+dm3w7TYx/61SdwQX6jyb3MSXZMAmdy0idHE+tbkwZfywQgE3EP1wFhisGTJU
         nr7yDyMDmArGSttIHPqw5I1xx9k1tyfqmg9sWXls88CLj3FB36gKAjsNeCp+nioYbJ8K
         wnXyh+h8hRU+iJdqeecMPqZLpwynFAtkVeX5KTzMdNOW/8g8RDXBxIfP+k6EHGK8e8o7
         CY4KDrQ6CCiMk1GITBkAz7dvWSsV3Fqz1uuLy5lt/qr8wswHy6Uc2CVcmTpdWkwv67F/
         c/FPfPwhTAh6w0uksaJqsZhXaIqqmV4/f0ErjYghIKYDgavl3k0vW3NCKeoKzMPoLotF
         z6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647889; x=1701252689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vP/wEMyyWeZXjpRHPyFJj2NtJhEcodvweIGAx/PKOf4=;
        b=sLsUGXnacNYAX+GcsvLi1OtB4Kb0AUrjWmmH7SxcgJ4X68+WYwUb82jWowb/tRqtmr
         sFvNvVJ+2dRhmmxBiN93o1fl1hTwnE//d6wF8ahi3eTAyUZm7vLQfyJeFWk9yex7uqbm
         2xiq4vG+uHJLkFkJXApSzAJNpR7kNBNydvs/Kx5Z8FL1LlDOmKhLSdvGSDmpEUmXaOVr
         WpTzyAqzpbT9mGMNDVApR1awVMKuJ4S8twWITxOKLbJ99ah/Wnfq5RArYKumdOeVxN22
         tQ1vYuSOltgTlsGFnAn+PWdQ4GI4z4+R3VjHqb2pn9By/Mew25r/AyrohL2vxaR5OKUO
         beJg==
X-Gm-Message-State: AOJu0Yx5bzEUVVS8rNyn9ROLPadeWKvO40GMVymyMpO+HK2t0YKXonjk
	2QZWESVVbb5cTYbE3Kn1BzDjxewrpk+JCzqmqnLp5A==
X-Google-Smtp-Source: AGHT+IGx29kdRTQQn8CGZoh3j5mVVsJVk0nuXV4JhCJ+BjSjpht2kOA/BnJgoIEbmsQqceZ6ItO/dEMl6AfW/UGfH3I=
X-Received: by 2002:a0d:cccb:0:b0:5cb:79:ef12 with SMTP id o194-20020a0dcccb000000b005cb0079ef12mr4360781ywd.0.1700647889451;
 Wed, 22 Nov 2023 02:11:29 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:11:18 +0200
Message-ID: <CAA8EJpq=3rPjJXRCBdf_pW5SVR1SgeHZd+4fXsyvw+qg6fd5cg@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021132_787661_698A1D40 
X-CRM114-Status: UNSURE (   7.47  )
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

On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add some missing v6.20 registers offsets that are needed by the new
> Snapdragon X Elite (X1E80100) platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
