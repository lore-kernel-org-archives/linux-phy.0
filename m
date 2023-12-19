Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 052D6C46CA2
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 20:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB1xA53ZhrTahVjS7kxb4YmnRVNVMiSPP5o7zvBcVV0=; b=LzndleuBYDUjSI
	3nd+jCKkQZHeevv8FdGn83zRMup99lTkl4DwqxfUAI0dUT8psv35zoCizik8MVFkNm5PB6PqGzWZe
	WAd/ik6DdG6Vvfc291jJZT4Y0OTt5verIPonsV7af7897BWLJlBUcdn/uPiA2+XaDLJdZKChLLSTk
	Su+LMq2Jv1h4m/jCP6fIIZB8RnFyzTl84VVu0iZNmOaVp7QdojkZB9XY6GjH+Ji8WGW9TodQ0bUgr
	xBFMYLTicpSSoM6R3MKYlKz8eizzJJ6aSE9bnIWMTHuSv/Kyz9mar24fr2WhuEHOIx/sa9HlAb9mO
	ihllXuDJdbVOEGggoeEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7u-00FRt4-20;
	Tue, 19 Dec 2023 20:55:42 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7q-00FRr4-0B
	for linux-phy@lists.infradead.org;
	Tue, 19 Dec 2023 20:55:39 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40c3f68b69aso47242275e9.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Dec 2023 12:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703019336; x=1703624136; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzAkdCe8GmigS9meJGB6RLFDC8CgmK6hEzQqiVyayPM=;
        b=zwsiSAlpJ3mnkJCL/rIDt8G0GE/spAv3/Q1OPWn6i6qVikFXOFMZ1bKWRJgqSTf9xY
         T1pszD3W1JHYxvllZX7DgAwtY6T3RZbu9wQMK6t1XyzRRaqCTdwf4Nz3gTrfxp2gA3h+
         PAuAPqmjzJpNYpxZLAOvzI9vICToOMwfSkMN/zNb3/C+3PXfYMmbMRqVrCq38/FYKO6e
         gnmX0DPeh5RreHKpTvunj7gjc2VlBoyCxSObychKixsc360USlNT13Q2x44IkG+8tF9J
         Rw58otSfppSn4nTuPiYiX5fh6EThKv1vNg18sG/DgHO6XC4nUvTdFBozQCAZzIshAvaw
         AMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703019336; x=1703624136;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzAkdCe8GmigS9meJGB6RLFDC8CgmK6hEzQqiVyayPM=;
        b=hsZamZ7hnpjHbQc7SBzT8uOKEKv3ZMs+OUfa1AkcJNyjbccFUr5ZWFnpQIfp2JWBwC
         wfWS1uKCf2uODTpqgFFRk7PKZX3bjDq4FmFjpwMMjObyK30Qnv416Vi3NuAvsA/ItN5o
         MCFadXF+6qL9Vzg0EpjGsrUf7E9oaSuIVbIwELSx46+sL0MPywViWoqJdg6PZK83chZC
         cU0bJtZB4+3NFBxVyimDDBrGeW6YiYIBsEHEHz14OhZn0649NxhwKZT6npa/9z2pkHH/
         Ki9lzdeuqIl0wjIZ/X0AvtnkBF0QBZzNQaVnbGoUc6Di293IXTBllG8pjLBP7p9L2azt
         h7wQ==
X-Gm-Message-State: AOJu0Yxn7yUZGmiOPbFBBAkO5sNWmecy1kqD9SwkZ37f/IfazzIiEL24
	I1GsCu03qelWeJJeenTMqCnWJw==
X-Google-Smtp-Source: AGHT+IGAJyStX1mtUQYYCTDSpkc//MycAPf4K9KBlbCHttgWpVCxlYFIAZezQfFFL8nPZ/38jCJ+tg==
X-Received: by 2002:a05:600c:4fc5:b0:40c:3f1e:169d with SMTP id o5-20020a05600c4fc500b0040c3f1e169dmr10096872wmq.66.1703019335958;
        Tue, 19 Dec 2023 12:55:35 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v16-20020a05600c471000b0040c4886f254sm4460701wmo.13.2023.12.19.12.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:55:35 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 19 Dec 2023 22:55:22 +0200
Subject: [PATCH 1/3] dt-bindings: phy: Add PHY_TYPE_EDP definition
MIME-Version: 1.0
Message-Id: <20231219-x1e80100-phy-edp-compatible-refactor-v1-1-f9e77752953d@linaro.org>
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=559; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Hwpu6tM6RD/JKvU7jn8nmPGWlA4+6aqHXvdwplMfgcU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlggNBNofmUvB1GlykPY4ZZ9ztP/pkhjzjIy3Nl
 Z7srTQrFC6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYIDQQAKCRAbX0TJAJUV
 VrC0D/9/zHvjOnobv+UQaalKS5+3SEoZw+gq6TlvFolwexpYugxNO9wiiksvlFfKDkrAY+pYWwr
 QID6451I3+aswqA45oML4NK4NCm49L45Fa9L/u3mYrW71hc0WhTSmF3W9hd+Z9SN6yP36AS+SKn
 cW082AZxr+L5l3LD4RMz6nFc5u4/Ch/Dj5ez67yoKtbeFWiFIkVKgGnwBz3rnZoYayXz1sHYf5R
 Ac2NRYU8NSGQWebJcwwLf3kGDxhucoUkjpn5IiwrpXPl1d384F/eB05QMHoLP/jVChE15eGrbvB
 jd0AxSTImUiVh93vI5268j3Sql9GP3CNEIDtIu3BQtQM63u9qJK4OB5FrEAz9VOpqY+pdhAmP9X
 wdcDE3kzYo/HYhQA3At+OlvOzF8uhO0hkG4oG2p77PlA4fJ5kIrfb32ag6yUXDHng8PLf0uzFwY
 nRT33fmT29Q4l1Vlzzmv8BdK36igDs8DPAKuLJH1CO/PsJe9L7o/6x3wf+0URcfNoXiJOKH/Ef6
 vtSXzeXZsJQ3fcibxVVbOjit9SUjV6FFe4JkRDDj8xZtrMCMuJl6RchB+FSw75d+JoQNwnhw+U8
 EdtrfK5ksdjg8Y676fDntQOdIOGzxwOXiaTLn2E0cRhD2DUF97IcFeuwXkEexKYViS3srXKydSe
 uzGKeMdgVH1wPxg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_125538_095041_102566EB 
X-CRM114-Status: UNSURE (   8.37  )
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

Add definition for Embedded DisplayPort (eDP) phy type.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..b1a64508d937 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,6 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_EDP		13
 
 #endif /* _DT_BINDINGS_PHY */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
