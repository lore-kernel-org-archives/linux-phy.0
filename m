Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E6D8D15D96
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yrkq4QtAcE6WA9Uvhohz/gFxMOka77bxkdRiYDGnMM8=; b=hG/mYoZ8+nWA4a
	5nb/hCKWxcd4YGN2CNe2f8V7YO+YhfYgBpVKIEPvAAesEjueq3UbEfpNCN5PIROIY3DLZ6Kla7sno
	CY9WBxyjKzxhvXkJ4GJEKC3EPvnDmgYrMxjUupqauy6weAaLRbReo9ZTTSnM4SnN3qdHTbtEKr94f
	8tbn/zvDyM205gcFC649ufXjv9HoyhZKAziWkE3FLA/TJRKzWVQq+PvFpkNfutI6QJUhqlwRr/v6d
	/YfcSzDgb56gMAKGucugL3WkNg9Gk8+yDrnjA3pRR31z671UW7KC5HrRsSDLxGl+aK07dKjeTrPma
	mPEH2Mt3qfXzDVdi2fNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2tHw-00000007bLZ-0vi3;
	Mon, 21 Oct 2024 14:21:40 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sqs-00000007VOK-1RWc
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 13:53:43 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4316e9f4a40so18330345e9.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 06:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729518820; x=1730123620; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BJfs+PgK1tr8VcHDI0/x5V7aXC/yCNYdGMqUywKj4to=;
        b=wMYWJX9XUb4Zaq7TprdWkh/VShuHbm2wYhxf554HZD7893fV0D3bLezzGwv3bh1zog
         urcSQmMXGHc8jRLxHKk0wjUj3Owst8QlUSg2uIU2B6smVfBACqTNM6Nt2HKwEEoRZv/t
         RIQhibzUrq584bB45wIiGlnESv/VB8Tpri2JXJKEG/dwY/sumQHrHbwOkzZKco1BQzg7
         16o9e3YjIja2RyICAAawJLDYQoh1aEYFH8TF6g9DGmPpfIyoLNUQjc29tb+OpXyeHsrO
         RDZ3eEN1J2ni6nPF6rlZy0v0AOPnztrbYxtyzW7QjpoEbVpDd9D4eoAuexepkUsESF0Y
         dUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729518820; x=1730123620;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BJfs+PgK1tr8VcHDI0/x5V7aXC/yCNYdGMqUywKj4to=;
        b=gSalLjst1c0wtilQ9OXze5YcVm7posStws4e1Sv6tZ+8FJT4NjHkBqXt73UJggSy1T
         pYU/34RpzGHHkDtj7koWj76PxU5yn/X/IBYfhxWxmg8RaM7N5bOEhe6wIV9xyJ8WjCqf
         RzM39lWD3D8uIOstccyDB38cZdI/Jz4LyCSp706+KUKCY2Y+A8HtoqORBqB3ZJFqJYAn
         JvS14kf3Mab1StGPXR0knfVyTIXoOnBXsu450REbwnwV2sicKuelxxEsNQUMyrKgGucO
         Hw+ciVMDQOeeDHMq3vSTqIFHn84HjZffuU9v97MNCmCmXSipf7LKTkdoi92AjhrtdP0C
         iLjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUI1kN4IcP812PNi3fPG2i2vNDl5gBKVxUg5/v0KDt04dG/MwBl/6d16DQVWtmw56AJaGOvee5uEY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMRYoe6pmfWwDGiZC9Y5fleCN68wH7zMYCl8OlbS+by/Cwafnw
	Sv/HQC7ZD5ODNDhPHVyMtbmPIUrG9HUpga6XTi64PIrEwnj0NE3XNEP3M8BueY8=
X-Google-Smtp-Source: AGHT+IHlX/n83la7R4mDN/KOpDwKGHa+CWoCcHlgz31EiLR8noQeoZk7NzcnUOBBFsYCIC2mYv8DdQ==
X-Received: by 2002:a05:600c:1c9b:b0:431:55bf:fe4 with SMTP id 5b1f17b1804b1-43161687bd4mr96391945e9.24.1729518820511;
        Mon, 21 Oct 2024 06:53:40 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b94066sm4408625f8f.71.2024.10.21.06.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 06:53:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 21 Oct 2024 16:53:28 +0300
Subject: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
MIME-Version: 1.0
Message-Id: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v3-1-1918c46fc37c@linaro.org>
X-B4-Tracking: v=1; b=H4sIANdcFmcC/52NwQ6CMBAFf4X07JpuKYKe/A/joYUFmgiFljQQw
 r9bOOlRj/PyMrMyT86QZ7dkZY6C8cb2EdJTwspW9Q2BqSIzwYVEjgUM7QJjaTsYuwGG0hDUZoY
 ZqeDIOTTUy1mCI0+Thxq1RH1NszzjLCoHR/F95B7PyK3xk3XLUQ+4r3+GAgJCnclUXHIlqqq4v
 0yvnD1b17C9FMSHXeCPdhHtqBGV5FqpCr/s27a9AZSkddBHAQAA
X-Change-ID: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2260; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mLPprBCYS0CcvNkeqeLXHs6Sa2ppC6QadWhv1n9S39I=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnFlzaQ/WbHcREWc1gcB8yq5ce/mMzJID5bmSAY
 x/QwnLoh+WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxZc2gAKCRAbX0TJAJUV
 VtqDD/4+L+nmkyjMjZhj2u3amD1O4+4KaUe6rWHdEVM6FmVywmgyb5aDk98SzwYPhy6nr3ms+F1
 sTn19vUBoE+x7NynWHbCN3OqpzpVYLeEMLVz0tUvQvA+I4SkPd1xJfqImPUz5xxjlsfSz05vBHV
 MM8tpB2I5zTkmt8w8jA/Qy2aAk4zx3fP6O3IcZX7Ch1yiLugEsk0cEar1WSelrxcaXspL0U2aNO
 cEUvTsxcunQu+Xk2+dsi7n5OxW3W5TREwXyswbEJZ8h0vAO8+tB9oqb3+UNQIvaZW9NbIJpzBep
 NdX6SlueY8yHmq32+q80kcDRFtnghrxVCNIhtip1aiucibEcglwTleW9pYH5FU702eW5htzswKG
 74JEV2qaTsiJyvUZSZFtFxM/4K5dCHb0QbyAjWs4XjpRx7PUogHQEoS1xTcqwY/KfIqxxs2PP3C
 P8zbuA4Wo670c7F2023yNwe6wihnolesGiTqf7Q3IrWFTZyTAw5qAFliaMEbPTDuPUG5ZO19TnX
 urEm4EFNJrtAQjszOKB8OI9iTy2k61mICexIBMJ9GOeMJ3nl1dMiKtDsU+P7bFFEKPqwo6KRBZm
 OzE1JxNm0bQhPj0rDL7ApnLPdrL1RDT2gWSojsSUk+P7nGawtqF9GU3eUZ9g++9HH5jGcQvNLD9
 BuqvpXyLyUL5eXQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_065342_431806_2B7956AB 
X-CRM114-Status: UNSURE (   8.97  )
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

The PCIe 6a PHY is actually Gen4 4-lanes capable. So the gen4x4 compatible
describes it. But according to the schema, currently the gen4x4 compatible
doesn't require both PHY and PHY-nocsr resets, while the HW does. So fix
that by adding the gen4x4 compatible alongside the gen4x2 one for the
resets description.

Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Picked up Johan's R-b tag
- Dropped the extra "by adding" from commit message.
- Re-phrased the last sentence to sound more correct.
- Link to v2: https://lore.kernel.org/r/20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v2-1-1b11a40baad1@linaro.org

Changes in v2:
- Picked up Krzysztof's R-b tag
- Re-worded commit message according to Johan's
  suggestion
- Link to v1: https://lore.kernel.org/r/20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index dcf4fa55fbba58e162e5c7bebd40170342039172..b5bb665503c86c79940031bcb58a36a833918a4e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -201,6 +201,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:

---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
