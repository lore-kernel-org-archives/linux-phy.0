Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1325D15D86
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 12:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFIjTM6FcmZWo5CrwenI0vJfxNhL/RNViplfLZFN/W0=; b=BTGSm9gj6difyA
	SqynvoMUMkBF/kmJHaptpO+L6UR/OGyKgOeUA7oVhAVwrCYrb4+5/RUhOLi2HyFFIbuHh4Z5h8yuK
	b58U9LGXmxlohStDCRohDb12l3RFX6LZ9jtaR+kwXPKRZWLCaDOfMHp4j1BKBfneR4ioWEDsNUFhw
	CA/PxCJL+RvUu8DKOUO25f6jvK0FJLHw8effi88RhtEV+f0GtOKPcxsRJ673+u0kOrS/dbYZBVl5k
	OUlyyNOYfhnH9Qmbt6coIpWf96/snkjtOgXzHscsTPkxTNq0aU3v5MCx4jwxJeG/ffdHiqKwO9IAE
	ns08sNO1kXCN7PPLvSfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rWG-00000007FAZ-2Cc2;
	Mon, 21 Oct 2024 12:28:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rMH-00000007CQO-2Qzq
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Oct 2024 12:18:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=++p6IK2xyUkmxIiDtF8Kg/j4cQViLTJqoFU8d2o1atw=; b=QktyDZTJG7f97J+2GFnjfOiMtG
	1aiYwsBtXmxYQsLYCU4UCBI+KaPoRg321mhEuZGXq+NpbvxhJ8bKhFkgk6q/SBBqs2ZSolT/mnvEa
	ixMoxJdggDoZuS7aMHQ3cLXPvalMtamQf7AHgY56v7obAN/oieMzgMawYCRjSlIRhFaQlFkDLA8Na
	ncyTQTHq1oeWcoKa1vm5YJb3JkqPZLXWuixjezbrX9Q6IoX5I8PqHf5YadY0h95qA5OVVs18kZL6Q
	0qSuFu19hB2hOyFLL1pJCDkm27lLHlCiuD0eoJ4IyswdXFYo1Z9PO+90en4keToZsj3qIE2VrNfn8
	MagaDY7A==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rMD-00000007ueb-0TNk
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 12:18:00 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-539fbe22ac0so4828481e87.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 05:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729513073; x=1730117873; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++p6IK2xyUkmxIiDtF8Kg/j4cQViLTJqoFU8d2o1atw=;
        b=cc/R/iPxZiMvlOg3S/4h8qo0oXKWJy+qC0FZs3NcgagBBTqeba4/QGJKaPph6M/5x1
         pfxmyWrMjHhStjE7ZRP4k8oOdrkLxjnwQW3vtC7ocX9FOyjaS452J+PlIoa6Jg7NwOM7
         5aV9MD9JAcbs9mWQZRNAL6PjV7Gv8erkK29zKjQceGWnCjf4T8q5l3R9BoEU6QIGxszr
         PeLBRGDyLcTUy+msQbpKsnsuRklA63qPgkWKFFUyHCqPjs+wAeFKkl5fQgFlQhH0YoK5
         k6q1hTU0C3xmlg4t1Gbn3VHJZog45zfoEspqZ4VXlUFhYPCuh7GKgaANk1J0jw3h33vw
         BAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513073; x=1730117873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=++p6IK2xyUkmxIiDtF8Kg/j4cQViLTJqoFU8d2o1atw=;
        b=OQ+O51gOKoDHgugNctoZx6BT+MfHpWikIzK4qGlbdVAheQt4EuN+GEEec5iTkyHx/m
         lQQsl2whmjnvkOEpI1sPC1LODA98jDzzndc61ibOX7KcjcYUOZk8Wtdo2ZxUlxIGrTNS
         o0uiYly9yQuQN8dmuHAwi0eEvCPWWnK6YgD/3mug5Ic8rRVpAjaFluWsVozCUf5xqx10
         EQ6eHnsyFZVbKwlLNbdBgYTAQUvecL99Wz/csogZJO7YwH0JYBXcgLM0SIoYpC7pmCmx
         xNCMysUFzse2e7GsXpU5HJwF8y3oXDXD3H8inXRQJ2kOPuUzGvVFBAH/dCRcqKQhaDLn
         JIjw==
X-Forwarded-Encrypted: i=1; AJvYcCVrlp/cvBCPM8S1iV48gWcUPa2sEkrAl2qZ0HWPkeqa0fk4xdihzEQeG0ZhyYcrHieysJN2J4v6OPw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgCQaG9CIx3ELM0ORitz6xqYcRIfI4APUnxam9DkW4Hlw7mVGN
	lyo3sm1swCBG7Plkf7eQIUlOnL/OB35hHb8M8DPpOAMvsxkqd1gj9hnanT/UfvY=
X-Google-Smtp-Source: AGHT+IEaBDgO0bJNd009iFuyYoVj9ZrfomLRDAMi/yxMGgNzbZQlm++57S0iUYR+s+bCy7ZAO9vNng==
X-Received: by 2002:a05:6512:2356:b0:539:e317:b05f with SMTP id 2adb3069b0e04-53a15229d00mr5612912e87.28.1729513073320;
        Mon, 21 Oct 2024 05:17:53 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22431454sm464210e87.212.2024.10.21.05.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:17:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	konradybcio@kernel.org,
	andersson@kernel.org,
	simona@ffwll.ch,
	abel.vesa@linaro.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	marijn.suijten@somainline.org,
	airlied@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quic_khsieh@quicinc.com,
	quic_parellan@quicinc.com,
	quic_bjorande@quicinc.com,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	quic_riteshk@quicinc.com,
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v5 0/5] Add support for DisplayPort on SA8775P platform
Date: Mon, 21 Oct 2024 15:17:42 +0300
Message-Id: <172950935864.2053501.518573859877352853.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
References: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_131757_266284_E40CC671 
X-CRM114-Status: UNSURE (   7.11  )
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


On Fri, 18 Oct 2024 12:37:01 +0530, Soutrik Mukhopadhyay wrote:
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
> 

Applied, thanks!

[4/5] dt-bindings: display: msm: dp-controller: document SA8775P compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/c51ff89a8139
[5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
      https://gitlab.freedesktop.org/lumag/msm/-/commit/dcb380d19e58

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
