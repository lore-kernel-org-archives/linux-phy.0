Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C23C54E41
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sppmPf7vrXoNvsrdcldh6ggFZPqvl4xbY1iOWyinkNw=; b=CmCR3ROVO6Nqe7
	FCY39mNPLhmczKiYkUHGGDQaPlyj0tT6k+HoUXORfydifEL0ueJ890i8ls0gvMaFIupLhZpU5ecm+
	4lp00HYL5/MeorhZE0A7d570H+sO0Pa92qq8b2xDDgRxKQ0vMJ6OzVI2WUyC2G6mfjbqajhRNGgGB
	/Dz6Ny8RCAbhKlMfPDnHVaRT+1I8t7TUaoUvqWYCaQR0pWzYEuHTX8IetCVVWes1jLtMkFeI0Esun
	0GYxnusYqA65LaWwI3vEzDvDHBDkvqBudKMb+/gJ0SSfifAPpRDvb1C9E+ll50AxobKs8lI2iEbeQ
	EYAaQwIn0u07hieHaatg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg88-0000000DbJd-0G13;
	Thu, 29 Feb 2024 13:07:20 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg82-0000000DbFz-3JES
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:16 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2d204e102a9so9081201fa.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212033; x=1709816833; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SE9xKWVsxs5pjWEcUUBayX/iRsKUyAQ4+9MJ8LDkXdA=;
        b=bw9iT9UYNkk/89hnlTixwjNlZTqA/6t2H5f43jI2jab0JfE65qvgB2UfHc7+ugUiRs
         Li2AzCo+D18/BQQbPHvo0HZNsm3oYRD+rNsNRBuus6xbCXTxdIamCIpkxKjr9353bStJ
         uDz2Hb+xQmLqgaSp1aaQwYWeuJ3wHugNZspoNrwWncGDJzDoxp3Xe43wx7RJN9QwEjEK
         nuT1zQNAC7KnY2tQlbmR42D7cdEqtJL6TXiV3cGbx0D1wjzYKtD9P2FrLsrU3m1gBWsq
         M9BD1aV/SsuA+NYzbmrH7Xw0NUjT9F5ekHDMclNXjKzBAVBPMNYv7LtLmUGAxLNtFFcS
         O3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212033; x=1709816833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SE9xKWVsxs5pjWEcUUBayX/iRsKUyAQ4+9MJ8LDkXdA=;
        b=na8NUllgrXrMeX7pVOab5Hwe+jDZqvOC1QS260L59J6zLSQFY560BuCAdbnO3MZkAg
         1QBEpW0lhmM6F4HDqhymdjYVuJ/UCbuSCNnCkdF8gXGzpGtwypqsTBBRp2H5hh4kEiGb
         yN9OvgN43cO5k4q870EpXyhvgrfKTQ7KyU16zg1OL6DeJSKtDz0xQF5PxJEa8zo4US/j
         a/eLdLTkc4HznIZuDTervAIzrbl+FURs3TMgKY1c11o6sqL1ZO3HAd2eggrdoyWeu5D7
         TLGOzwNT/6NdrZTUi/m6ekHKca24qXkzDzQqRNmiIqZc+j4s7cnGjnkoTVhOZ2jU/wv7
         FMwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuw75tmiRxCMaNnmYSgKNEBe4JJxCwM+FdnBk9Tn9Y5PZJCS426Sj/7TskCCi0HGn8WMrOEexQSDYaH63YmjwohA6KUJILJSAMGiI+KA==
X-Gm-Message-State: AOJu0Yw/nVMMcthJg5vhsCnoMlVLAOjxSSdrKk0cjZnrL9qoVv5F/0Xl
	iq8oYbutRqAV1UQlp/p/QFPDFAk17FtOm0F6u74hOhR1d/jBI1PSSITpa+rO3Sw=
X-Google-Smtp-Source: AGHT+IGn3VGQDNynXtqcROY+w95yeAvZysb2r3gp3IsB+wTNLRr3RGjZHc70TRsmgv+AcGSj2xhEsg==
X-Received: by 2002:a2e:9a8c:0:b0:2d2:3758:8c2a with SMTP id p12-20020a2e9a8c000000b002d237588c2amr1296864lji.9.1709212032736;
        Thu, 29 Feb 2024 05:07:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:12 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:02 +0100
Subject: [PATCH RFT 2/7] phy: qcom: qmp-combo: store DP phy power state
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-2-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1271;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=cCW1iS1Wauzti7oU5CFmde3Uy5U4EhSg8/m1/ht6x1w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF7bfuu4oiH0n1J3IHdK+9gk2M/GXn3L4FSAJzD
 REKJ/kWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBewAKCRB33NvayMhJ0f7PD/
 9B/AG0x9Ko77sX1GbvkvxzHtijD4Bw3hLJo76GiC/1U/uQL7+VmW/MeEUZaHPrMUswPByMjJ7HEZOA
 ri/6gD4+/LfMFbN6ehU8dOCbNSbmvTStcToPkSoLSYhrxpyRBdGWgBntHQKayPqJUPrKkv3SQ8xtdq
 kLuev342eIkjoALEKYA2xx1cs302o/4n4HNIrv/kEThLoUUc+5lMefqx+fhUoCt5MakeV0NJZ1UK/r
 tGuDqbtJRxfz+mdD7zjgkHZOpf9CGfAToix82dixhUHYeFlqKPd2QNPy83blIZcpUwcSYwdVOBq1u1
 aZ5XyfSEfuJxKASqrkQGGRGtUCj2XjG2W5qpFtx+3HHsFmQ5dz8WN+xG9lcg7O9ijLf0BrO2EA3Ft1
 jNnGLyuiWUNjCc2SCUO0SD9Gjz3v6Kx+i084vOjAsZUXlYwgr5PRlDmdvgGOsNMtcTMvCeUq5tn/4L
 ao2z/ZVCfVTc7bkAVVwW4Ve4LLw0Dprt+jCWuwtrG6fP5xGYTbJLrqpw+uTKQ0z5+moTFyMnhtGWhA
 dWYbv4XhBb4DD0rHDCyTurMl46oY2HtmVSUrc5mAg+VtVw8sTfN8ks82Wy1sF3XNdTLFj+sgtAwOyn
 waJt1tdhtHBaQppNM9XhU5RnMbh8GvrSAqIZsgewoG9JhfCiR0SVZoM4lfqg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050714_883031_CDA6973A 
X-CRM114-Status: UNSURE (   8.87  )
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

Switching the PHY Mode requires the DisplayPort PHY to be powered off,
keep track of the DisplayPort phy power state.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2f341613fd31..3721bbea9eae 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1500,6 +1500,7 @@ struct qmp_combo {
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
 	unsigned int dp_init_count;
+	bool dp_powered_on;
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
@@ -2627,6 +2628,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	/* Configure link rate, swing, etc. */
 	cfg->configure_dp_phy(qmp);
 
+	qmp->dp_powered_on = true;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;
@@ -2641,6 +2644,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
 	/* Assert DP PHY power down */
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
+	qmp->dp_powered_on = false;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
