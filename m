Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08307606A325
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z49/5w/g;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ax7sJoiY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OrYwUTtb3PWk4paqzBAscalKnweCflyhzRmhGHgcbXg=; b=Z49/5w/g0yaig5+7/3KOTTQiqC
	bMKfstyEzS09AuTOQ0PctBVEK+Yu1k1Fk5OrS85qbrtzpRXf2vVoXj37vWmruR+bDIGHX8XJAbrbd
	+Nvp2+T+CTzwKu/3rDQiVONiCMDK3eXI59fsZZGo61sBFqvtEERird7GXqpYzbR8w1qqai0+gBhBU
	HLU99tFWU8aWd91QbopLuYyDr/Nk9/akI5N6mh0jhlJwy//iweoFiJXHcKo/Tn4xfde7zNTizy/eS
	yC9marvvDuEKNIpWFL+Dow8hBTnindgfL2ja7lzc+WbwABYXRIMAz+l7a3BmHXJmZKFUhKS/wKOHn
	vdGNeg3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKM-0000000Gy3t-38We;
	Mon, 09 Nov 2026 00:33:38 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKJ-0000000Gy15-2VGt
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:37 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a549cd7fd2so2791995e9.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184414; x=1794789214; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x3Zvaf/6knxBP4r88bzQVxogNYmuURJ/Z9N4FNNEXXM=;
        b=Ax7sJoiYO5Nc6fsKupiZbL6ctwC4bTNMF3jKLLP3sQ4dgNhQs+FqGDhtGVdQIIVoSF
         iyxCmhf6gXejiautMsj8eqwkYD8a+neO7Fe8rHwsa2UTa/y3+adhL+XpGTlrV9m+a13z
         gbNpF0FIQLMYdkr4ZqtV3MuF23M65OD9xD1FatJYZOSiouqdoJqJb8raKm5JcfBNQ89m
         XRJmxKLpCXLSQUMK3YPXEw+FdmQe58BmdYJkdDkTzlISpHmdB2RW7+qfy+Ap9LkGRDrx
         NfNl6JLwu5oO0f1DkOXnT0AhuOoCI0PvPqHzVKlOi5kV13AMd8/FY9VpSnXb12mc6Fr/
         LuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184414; x=1794789214;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x3Zvaf/6knxBP4r88bzQVxogNYmuURJ/Z9N4FNNEXXM=;
        b=CsoT+8+I32nVmDBKlpHDuwcf5PDWORvBylWrBf5xrJabZCIRTu1apKK5M/zYIOuDnY
         9ep08yAvlmF5eN9svSzJJrCgu4DvI+r6bfOxnhHfeW4QWyFqE6bQ31jxoBFPpz0+lHl3
         M3jqHzG2N1CJAyCiYBT9VcLDvUm5YooHwfeGObtLmTkIF+cF5xWntCNlElAXFTE5ePJS
         d+WwPQXFn4nV6LGGF8WlzRkaoMgT1MhS+umNNZzbMcN0zVNXtVcE7PLmkEv20GwZ9R2H
         kHQK+s8P0B2gEvqgoB4l9H6VPDWZdVHDpRPXGYCnUZrVEgTT621oM1GLqtdPXEIRxIKW
         4imQ==
X-Forwarded-Encrypted: i=1; AL+hErGZ2wXq/KbSVOu5QldCg23iOW8L2WV7VtmzAOHVRBTkW55ZamyEiPdXJMteTaABydmqiZIERcl72dg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+NWc4NprQ0RYSz/CaN0TToJHnEvEJdJxtCC4GMKBw3KGrkbsRx
	k8Pzj7Au+XpKpI3BKMnFP2QGQqlI9u2kBKhDZHG1X36IebvPaDRYDri/
X-Gm-Gg: AYBFou0Mce2/bAmA67GN3GjpI+YrucRVhFJN+OefibtD/KpIVPzUwoVwmCzASluIpxc
	PBD7oqpiDLd4WAdy89EbRafsp2Bn2yHjHMfvEubSLuR1FTLbzH/IXplx5ZqV1lq6jVsQ9CA7dyq
	rDcTbrmBx9R77gSLlQz1xwoD1GQS/kxMMFA8ZmAT7Z8eFGA8y4OCZDqqySORvuvLbThVb0jiRQ4
	F7E3MtY7MLtjE0+oLHGFtWeG1Meint4tgoTZUeiXeBMOEkICxYW6JwJMChBTDJeEg3GtKkSoPFy
	EunWbLlqcb2Hc0EZ6RML//py/t+9yERqD6PVx4gDxLytkL8YEF/yxQTG8dXUn87QXGHYbwRGjM9
	RNEwck0VhOdMo8Yph32yRZpT1iTO0mJOD9XZze5zYHTrdv9gpZ+aWgzDGN0mTyYpKhw+Hg2grYR
	wcJ8cp1umYaWVTkMMZhOMwT+/hwJxoMcquqv4bBa2tUZkjoKbJpowwckBgpDm78qQmwTx0PA7T5
	zR1/oHhlOT09KmIWyUw8nYuAQO0wMGuFRNGNwoj44vdmAijxdsOW5/VRatNFCPlB67Im2fXwZa1
	NRhNP3bN1XV/bpwsPJ7+fF0/6d4jzavAxAaMqjzM
X-Received: by 2002:a05:600c:8506:b0:4a2:10f9:37db with SMTP id 5b1f17b1804b1-4b963c664fdmr50119595e9.7.1794184413846;
        Sun, 08 Nov 2026 16:33:33 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:32 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:14 +0000
Subject: [PATCH 02/17] dt-bindings: firmware: qcom,scm: Document Halliday
 SCM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-2-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
In-Reply-To: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=1033;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=mntziyVI6wQ2kSkSteAmiaUttlX3LQ+YCHknAe0v+s4=;
 b=6KLs+gQMEgAdwwaI8XXKZHARhr4EIqJqXke9wpzWMnotth4jMEZlLGfBGwMvNoTpcE0tKCN8v
 aRJBBJI0d5iA+Opb629gN3RAQt1TeYIjZdEvW3ChlNmIbJyjVXak7Mn
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163335_658703_7474330C 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the SCM on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 40a267c54b00..fb3da66443ed 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -25,6 +25,7 @@ properties:
           - qcom,scm-apq8084
           - qcom,scm-eliza
           - qcom,scm-glymur
+          - qcom,scm-halliday
           - qcom,scm-hawi
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
@@ -225,6 +226,7 @@ allOf:
             contains:
               enum:
                 - qcom,scm-eliza
+                - qcom,scm-halliday
                 - qcom,scm-hawi
                 - qcom,scm-kaanapali
                 - qcom,scm-maili

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
