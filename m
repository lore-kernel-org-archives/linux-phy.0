Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FC4606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 16:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xiLYTHdb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=A3vVhzmZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=W8+nb91oX0i0QtgdCQctn8N9awYDE5N/W1BGQ9B1lVc=; b=xiLYTHdbi0LhBKmtYbsTfdXVeB
	psYB7gUc2GXuwbUaKf4Zkmw85ps5DA1lC7BjQD6GMp5AIV3dtDBx5eSraVb2e2iZSXC9hAsTQ0UAU
	9EO0iT6Br0ROFQ5D5+XHlGWPJk/Es+/k1hxuO6C6kMNG4mi2eNpYJv6Brl+Ib71XzDVw7S+IsJz0L
	EKE3JKQktwhneb5BbjlKks9Nv5SoRbRZLCdb2k+Jovm0uNmtG4FOQ+H1Lsdk+qZMW8Dzp8TPJ5DOz
	2PfF6LY0dw99bhwe57MWLyrteDqnId5L3fkJ7ZO6G441SB0Aipqv4TnME9Kv0OaU8V3X749Ak3UXi
	S5Eobc/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBsj-0000000DUDY-12By;
	Sat, 31 Oct 2026 16:24:37 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBsg-0000000DUDD-3qVS
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 16:24:36 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-91b9e758c50so22565346d6.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 09:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793463873; x=1794068673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wIweVJYcGEf+JF0pxNSl1gtpRzcg8XL5MMMTo3haHAQ=;
        b=A3vVhzmZVVlPS+bfT193QUV4hRlgKFpZWBKzq1y80fshMlCqXAAwVNF3vwZXc/fkSB
         bxsVeZDIkR4KRd1h+mTrXOf9uRT/aTz9aAwpB7kbLwSEak60o/AwStqWuE98ptlwKeCA
         YAnIYw0mchiTOAY7ZCLSfd4szTA8L0td5HuZLJ5aDNMGVc2MlB+9BWZeKWtNXi2cKbJA
         fj5I7w2r1awnRUAiD2piZIGlJvBzmdgHVzYvepjlZ2u2RLZ7Gqno5XeYCFUlue2Nnnq7
         un6GjgmmQwTzOxU41BFpWC5Sz33MdJ9PGZUzE3hld0FilDAJCywi6CpWbgsFxWc5tZWU
         Lhyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793463873; x=1794068673;
        h=content-transfer-encoding:mime-version:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wIweVJYcGEf+JF0pxNSl1gtpRzcg8XL5MMMTo3haHAQ=;
        b=XbHYa2UTDorTuK5FVkp4ABOvWYOiMYfcEBZi8Oqh50WLuJKXPceKO7suj9H/Efwfva
         ihvJnvmGu4f8qZ8ss765DKUICgP9nWA1IhZEhgod+GG4H9AoEuUrtqtot3Uv5NPtWlxb
         93nw77JxDbcdX1Bma00XkTApaxbdZGPiuGYac5i8HiQ6nyL/SPaQ5APK9tEXgHC17rFT
         ykUJscRNI942KX9cXvIyb4wi700x3lEES15r1qJhYBPoAghacmems0M8fKxtSxN2pW88
         8Q5xGQoQDmpQfQ1oQisJ0N6PiX3XD3XM75F/gl68W2B/Qim1tBp//p/qTuTFurun3eiu
         wHFA==
X-Forwarded-Encrypted: i=1; AKwUvBwoKpibQp+G1q5Lg/xfDO25kGRJ7U8H9uUWe9+jtM7wFFK6cWSThjvNHhBCrrdj9vtoBHYkBPT3n+8=@lists.infradead.org
X-Gm-Message-State: AFq9FYJQ1pTMpiRQvZbNQ0S8DQTaAprNwtyiP1U+NdQH8rjJFoPGnWiG
	s3X70jVM24s8LwcdUNdKraiu14lOCH4hGCVVkQ7UwUIwBozwoiJnjFDC
X-Gm-Gg: AYBFou01GjBPmlyGPPtmCCbHjckfC+0Cw5KV6tLcA3qALayahuO21C8c3xq3iahCE9l
	rzPRLknWBacHFtavSk73zKNlXGS25oQX8IL+jbSp92Hzw6/ejmGsj/LOKJoWQpJnr2C9MTQyq2b
	RF5IKkXtz1UDt3lJwgSXR7DX525uF33qBe3IqCvLw2XMD9agHiYhQWyLn3nqNZ3M55O3z3HYndJ
	GOT64Wel9kKWyoJoaQGBoqdWTDYObtR31qGwaxVF9YMhQe5vZOoXb2fShJtvr2HPgOrkIMTu4t7
	8h0u3vVaVLc2NP+snJPBWqaHO8uz95MzVoy/9i5kpAgq/wviYarWSnJFteUtutgi0lfj8hNLMwy
	ttZigNbhbF/8lh4w82gA6awse3WerAgVPh/ylh6RixM5sxdrdYWsBNGDzfB66MKNJrIA0Rf/hee
	Lsv+gs8BFTdLQUG/zHHMsGBINTQhIB7axIxglIvnujmkbsKZKlmRJDwR9P0jYNa5MOLfe2osCmv
	qdgA19oow/XWhoXV4Kjcuf2Py0Vol6Z+Di9yMI1MfgFkzjiVvZSxvIYT3JHuBAalJnAwQhtB3dG
	AG06cpTC/qVnmh8CA3Nz12SGj++wwF8Q5zT9fB0aPvR7YdBl+5U8Z2lgxdzSD0A2yE8OPxoFEWS
	bP80v5Q==
X-Received: by 2002:a05:6214:1d0c:b0:917:99d1:bda2 with SMTP id 6a1803df08f44-91ca4af9845mr87259526d6.8.1793463872919;
        Sat, 31 Oct 2026 09:24:32 -0700 (PDT)
Received: from localhost (h159-112-31-107.euclwi.broadband.dynamic.tds.net. [159.112.31.107])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca807047bsm44369856d6.39.2026.10.31.09.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 09:24:32 -0700 (PDT)
From: Christian Cortner <ccortner@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: edp: update v8 power-on programming sequence
Date: Sat, 31 Oct 2026 11:24:31 -0500
Message-ID: <179346367993.44447.8683103034067826560.x2e-share-edp@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <fc3d0dfc-20cb-4289-a0dd-67ace50d42d8@oss.qualcomm.com>
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com> <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com> <fc3d0dfc-20cb-4289-a0dd-67ace50d42d8@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_092435_016249_6874882C 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Konrad, Bjorn,

On the Asus Zenbook A16 (glymur, eDP at 5.4 Gbps), this series with
Konrad's TXn_LDO_CONFIG value (0x91) fell back to 2 lanes on 14 of
120 link enables, with bit errors on lanes 1 and 3.

The firmware ends power-on with five registers set differently:

  DP_PHY_CFG_1             0x2f -> 0x0f  (the bit 5 Konrad flagged)
  DP_PHY_TX2_TX3_LANE_CTL  0x05 -> 0x00
  TXn_RESET_TSYNC_EN       0x0a -> 0x03
  DP_PHY_TSYNC_OVRD        0x3e -> 0x10
  DP_PHY_CFG after DCC     0x09 -> 0x19

Writing the firmware values at the end of power-on, all 120 enables
over two boots trained 4 lanes cleanly, and 10 of 10 resumes. Which
register matters is not known. Happy to test a revision.

Christian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
