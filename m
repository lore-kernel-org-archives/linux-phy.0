Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFBBCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 16:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIukdcMMDNgE3phPyoxkoVMWNsfQr6etv0SVOSYGY78=; b=w5OfLQ2kEHXCZc
	ztmdTqNTBcUWWMANyAzBXxx8csnny88x9+aBnmXLtsLfPMYgU5y7KtoNeE1Ba2cjOiESLykeYCz0i
	dHV43HO0wniE7DfS1nLATtdTOXO6I8hmCQr3nuXP7dauFad5OLHqxH1cQtF4zAVwADDM51+xQFCTc
	wbEpggaut3PDcRXscxBgL9MlUXmpJQp48uv8GcgAeL+jIO2POeZrbqoQxW/KAWxJFfWAXuWlyrGFX
	mh5QVMiL7LVasSdXapYlEJ7CpgdMYQWnohhiFOYk6ThuJsU5WkJD0YcbSD/VJ4xnHDdhoXi0FEYnm
	Uf0yI87jj8ul/GxUVBdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHkUT-00000003OzQ-3eGz;
	Fri, 16 Oct 2026 16:09:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHkUS-00000003Oz6-2x3c
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 16:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ttmMFkFYZs1qc4FswsXiJbWUTRZVrDxwrIXbqrFBdtA=; b=eNZltFIq4H1FUpYdzRJk/W6qKO
	e0Rh5PaKIhmHHeJtu2giJJ+XDQuB04PA+US/O2o437Rfx+2SQ/v4EabtK3xctrZvnGnMiqSbKrXxh
	ivEcyuXG1i2jSdqKBEo1GLvE4ybzufoVLX9mGK6TtrryVwhaPfT8xktSqWnQH7aLyC8xrcWGfbfNi
	DZGf3R3o+lrgEUIQ4RHzzy6rHZxmNnmN8UEMPnlF3oqsRJATi/JD6Af8oRlL5WXVhXLcTjZ4NxFhM
	x0Joc5b9VQ7JzeZ8uJRq0u0rRTOEXjS2sdSVdGIl4xW82LorHynnqD1BtFOWYh6xB8PjYhtJ3g2w0
	Jki74kkg==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHkUQ-00000001iR0-06VQ
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 16:09:03 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a1af482519so1382215e9.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 09:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792166940; x=1792771740; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ttmMFkFYZs1qc4FswsXiJbWUTRZVrDxwrIXbqrFBdtA=;
        b=tI0yvfixdPnMG5KUZWF7E24QgyUSrnL9CMzMa5qx9T1NfocS+KTwPeSWHDAz/KiGVv
         QbptJkcQ4T22vLot/itBVgnnXOLkv8CDyIa1lu7y8CjylaoI25vqWX58k77LdlhCVW4U
         jOdDAWZULPbr/x/vUHE6422onNK+vDaQrwxoivOIpJMMyRwHnjDtsGPyC+1Y0UqXkgFL
         i3/76L+UugWtR2Ng4IhY9eHYudEOrPI3I5VUQ6y45O1YVwOC8QuVGO5WPYfQaXix2CYH
         WcaCWbR4oChS6rNgOjrk3y53f3LVZjaKJ/QUIXe246xRhMfEQzduv5HvyPqKR2lJUMRI
         2Agw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792166940; x=1792771740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ttmMFkFYZs1qc4FswsXiJbWUTRZVrDxwrIXbqrFBdtA=;
        b=FJLA4dUmBWa1nQZjyJigk8wEr2fcnPQWhIzMVxlKCeOqD6CZP//sXbSOdA5nshFp0f
         /3cGI1K5tpFSPmJT0KaZTVKNLvj0vnzpT42G112z1/0nrzKSkEgPyrpSDqxLhjtD+0CB
         fAulQq8PpwOxXK2ePNe/TuUJ2Zy44j1OhUZJXSks23naRpQAuTeyTooo7354zgcCPJzo
         YzxzjOC+uowPI2ls26fyxpWCioOQ8JkrQxDi/EO0Q3EeJmN5GK/yVg5s8bpiIEXgjRh6
         /l9xZclnzOC4EM439pMUSqt7igK7H0QSiJniDDQEATUZ+AMKS8Qsf2pqwjXQ7/mCpvPR
         bFcg==
X-Forwarded-Encrypted: i=1; AKwUvBwZ4N3SC0bZG1CXL+qqnYjsEz6zM8SAWuonsj5kU52Mdtx0jJDVk95mfcL/DXJ4VB8QzJLAQrJ/3ak=@lists.infradead.org
X-Gm-Message-State: AFq9FYIIppecjF6t8j+C78RoOj6kkKAb12p/w1x2HWw6WUyHuamz3B78
	JTyiERr4bKfR0yhkJ0/uhnQtiCrnhYYuUyMyK5x1GJIgx11HgdhaqzHj
X-Gm-Gg: AYBFou1g/pn1JSVR6Jf3YcZ5fLMWLNHPn45BOJ0lYcF4nfIAJZKdsgKgDAa7uXmSc56
	tce8EYyYe7TGTWeIvjeGzhQYTS+IsZwwXwyTUMPTUW6eAXviH7s0daFAp3/tcRyNwgj+G+AxwSf
	m1ncSulde9rYAUxg1n2fSUCCPNNxZHbgMVRvhHjOSeYBYk3B8ytDVckYAY8dthD+VccG0t050AO
	LVaQSY5W4arfFRybiyMXhbOmwyo26Pi8p51wkBwDANQYm2fAks5E3oPZHEUN6zeeSJmbtFf3LMz
	232ITmVhJDt78oVveQglTyP9MGcslJT5vhJukf6I3uS76LDqJCVnGLg+dMEgpRYqN6jZkv4OmxJ
	xmjd1HdSrjKQHLE8OniSXJlgGESVmoTW4ZhycmrcZwtDsPA3rGEkoJ8tZGCbo5GO5uamJ97RpDZ
	f0WgAqlTaBrZM8D2bZRborV2DntdRW6+IOoi7q6YE1Fh1niALHeksxl8u2CvbcuLNItKDzvYg2n
	2gb9Oa9aVFWFq5PEZ6z/EDTVSKP7gJ4FhuKNdHoYAD5wDdGgAew5OUZj8xGzN8poCPIkiIT
X-Received: by 2002:a05:600c:e548:10b0:4a1:d766:758 with SMTP id 5b1f17b1804b1-4a1d76607d5mr3809095e9.16.1792166939897;
        Fri, 16 Oct 2026 09:08:59 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd47104csm6779011f8f.8.2026.10.16.09.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 09:08:59 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: David Heidelberg <david@ixit.cz>
Cc: Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/6] phy: qcom-mipi-csi2: Add C-PHY support for X1E80100
Date: Fri, 16 Oct 2026 17:08:58 +0100
Message-ID: <20261016160858.193572-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <6564f9f8-6ecd-4912-b029-c92dfba792c1@ixit.cz>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com> <20261016-x1e-cphy-rfc-v3-6-40a346a72153@gmail.com> <6564f9f8-6ecd-4912-b029-c92dfba792c1@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_170902_259232_B94CEF30 
X-CRM114-Status: GOOD (  10.40  )
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

Hi David,

On 16/10/2026 16:10, David Heidelberg wrote:
>> +	{.reg_addr = CSIPHY_LN_CTRLn(1, 26), .reg_data = 0xf1, .param_type = CSIPHY_DEFAULT_PARAMS},
>
> Thank you for the change. While the lane being decimal number is completely
> fine, I believe the register passed should stay in hex :)

Agreed. In the next version the macro will take the register offset
within the lane in hex, e.g. CSIPHY_LN_REG(1, 0x68), so each entry
reads like the downstream header. The object code stays the same.

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
