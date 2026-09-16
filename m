Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F29C982C9
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Auh2SojRmVOoavUhGpLD6A0PEbOLEgeqK24yd1Ae08=; b=GvzBEnP4+77RQC
	yfRb3yvEssCaAznrJQUDX3oep2sbCZqkn1FDV79VfNLolwFhAmbnFnxPtWRByAdwXxQv3r03A32W3
	cjnPbnbkw2t9N+PRJqFxDW+2j9QjHnVWvxbD60KW4RPyoIFqgD53i3AuwcVz0aigd9rAok98WLXT2
	MBEEI3aXDB0uUwNoRMFgBlN+yK+1JunpDEvSe0+PEQRafrrjvwLRf36todTLq2PyQJ4eTEREz1Fqt
	Y+aBUXatqpJZgYyI+6jO0DUXWcr+ab39l2GkgakJ09JUB4oLH731hqkTfZlnPxnIqYFWzBi82WXFi
	OA8Q0Gw6xQrLrM/ndgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPb-00000009xTy-258A;
	Wed, 16 Sep 2026 18:31:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPY-00000009xTJ-1sDp
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:31:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GG5LVZ3597338
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=v3gvRIGA/yV1xEyOwPDhQD
	5kTkCxuhUGXgr/bqpja1E=; b=aSfN57JiqDov2+LXnLsEHMyU+sKkGGpJyTGWIM
	wITMpOfFoM8endchB5r8vfr9ASRB1lDChTGd+lH9fXKOGHJueQtlipgRmLiR6j6K
	AmNI9/06ACMZ+XesVfMqGjPEZ7TxhKwYve2TXZwtil+gEJwalcUc92yaZxQEsfY+
	9xsXDbA4mylae1TMUd7JTyAXfBKUma0PpbZHNybtvvFqjlGFmyJuwdIxuUXdUOHD
	PzFjABYtj82hJc8c0MWlgd7XrqyzaiQIb/g7YoLv+m20c5GIXmiJGjIZ26iEDhLY
	23t0vhk/lad9/dQmskssFGeIf1aZZplBGBEHIuAzZGrFZq+w==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqxay8pqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:11 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c96bf59c31so1230834e0c.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789583471; x=1790188271; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=v3gvRIGA/yV1xEyOwPDhQD5kTkCxuhUGXgr/bqpja1E=;
        b=K4W+yFkvsQCJUQQumweewL3y0NL4j2TvLWYj3OTnbt2cXtHuOxA0iXaSs5k1FD98mk
         /XvsYq2n5UYu92S0lLceVHmqQYrq/A2cCB2vASR/1h32f/nAZ7qyJj8g8TDE8tpmLcA6
         k941EFVS1rXYiZiyDwtT2Ne/hnCY803uPpbnYTyGii7XkrTZ6RptCH5UWWyjk8ecXA39
         WvOVS8vTzNsV2xWgRXQvQ7gxwmIOYWHX36/rPGXfss//vB8mRiDCxaRusgBbZ7KIfLQK
         533iURRcvGBa4fgMUXk72u3lm6nk2kONgLDUlYuIg+0wZFOzP47hntVA0iFV8UrmEmVF
         lAjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789583471; x=1790188271;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=v3gvRIGA/yV1xEyOwPDhQD5kTkCxuhUGXgr/bqpja1E=;
        b=cJqPGL9GdKc4VC7JlNP8KkZly76Ks3tbr811QfsZvi4xETiES2QHWRFX1Ypv3JJeIL
         VJEcq1jGwDb4VcfjvfmxMW2qZRQoT+OHxMDZwQuRtwl4MtF/WXihvEjJ6zdRhxDa47Fe
         JKhxyFiT3rH/uFkU4fY5nu5R79zLhRYgylkeWg25aocHALUsAFT25q83A93a5oCs2x8S
         qSjJHgKRJnICXvGQZcRelKLFvb1mI/W8EhWq8fuBlRN/RaWWeEttRWIYC10ehTThAcpe
         Xh/TIat0e0AUistUEf5xdCHhe3vAKW6qdba7zDoqvhnvYDHVkPZ9TBcLV4kIettpX6z3
         Rhyg==
X-Forwarded-Encrypted: i=1; AKwUvBy1yueRiMFg5EtmSUin9wRZT7LYGCPYIKrs+UrRryymdsKD+gtvIQrR5YmajEvmMwC2GfyqLis5iio=@lists.infradead.org
X-Gm-Message-State: AFuF++lZ5RngvENaAxXzYTRLdlKuNgvhuzZTEMsF2EoQd7JGznOIi7bF
	LT/wPvEt7CkOsfr0izqkSNFXiugYtzvLunbR/IuLommO0ClxGNjKoNS5CsYBOsKUahf7ghGfHyL
	/w5uadMouGkxCqVnnDvEk4+iMGqOsoYEvVlcEju433Kh7CgvxbqLKs8dlAeUP/F1+YI6H
X-Gm-Gg: AYBFou1CUjwVYNnuTay1aMNk5vh83Bmx6eb9sthTpfHxt5gd9MPAcZm+CZlyBxv+xuV
	nJODSZcOTsDXZVZi4/Ph6p/DUyyq7jXuYYqLLsNFwuBmWVkVVS9ZXwGrAJx7/Sod/0NWAkEZUS2
	/UFbDk8sE6ZEfxauI2YKdNbe9dHMwxPYuM/2FcHlXcPLMOX6xSkNZX4KxRIWlJXLWozfce6hHm9
	qvYeg1qNx8nrkeXirnmHItWG083TR5MRYd7BpSJwtDreOSVYNsoNhkuzU00ZR1Lt4SrFd3a+m1b
	m+qOWSekHahWcwjmBazbE0v9wqsKaWu6WRJ0AMdn75IKTKqD1BnD8TNjv5ROCqRwx5c3xYm0hfN
	6w5/wp6PJIz3p8zke1Uf7TT6w1wE=
X-Received: by 2002:a05:6122:4885:b0:5c9:a60b:e5bb with SMTP id 71dfb90a1353d-5c9a60be949mr367311e0c.11.1789583470475;
        Wed, 16 Sep 2026 11:31:10 -0700 (PDT)
X-Received: by 2002:a05:6122:4885:b0:5c9:a60b:e5bb with SMTP id 71dfb90a1353d-5c9a60be949mr367165e0c.11.1789583469801;
        Wed, 16 Sep 2026 11:31:09 -0700 (PDT)
Received: from brgl-qcom.local ([90.161.207.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bf2797csm8625416f8f.16.2026.09.16.11.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 11:31:08 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v2 0/3] phy: qcom: Add USB PHY support for Nord SoC
Date: Wed, 16 Sep 2026 20:30:50 +0200
Message-Id: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFrgqmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIzMDS0MT3bz8ohTd0uIk3YKMSt0Us5QUY3OzJLMkU2MloJaCotS0zAqwcdG
 xtbUAM0qRwF4AAAA=
X-Change-ID: 20260914-nord-usb-phy-d6dd376b6b53
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1395;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6WFqMbsY5MFMYqlgynDA30nN++WrMEHFTWgw/+n3wAE=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqquBfVzBHJbfCqkaO12bk15XeM7ldkyj+DPDmD
 bVq67wgUoqJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqrgXwAKCRAFnS7L/zaE
 w/YkEAC7mYA8uMPgtdZSFoRCRwKj2MZ1A+5hLEUA9Ug3b5UGi0lpcHOtTZPG7d6kqRVGSPkED0x
 6iCBgew7V0+835N113sER9CTC+vM722xH329o3Fd50yzItvfqjjGQn/8MJGu4Zm73/8RG8hULsM
 A4axgIXl1qtrv8UkdFS1IIXCu45IyfRUuv0aOwfszZJ5HTT4JuZcDD4IaiNZoa5HvL3Lb1hzhEI
 zp0TjPEqHRyC507DzF+W3VyP/QQ//Dcq00QMa58uZ0TojcML1ZADfGixbgGllEtzf2wIWjKv6P/
 DI7PfSLnLww1dgXE8HvwddyfGzYSHHKPrSXEAGS7cFd/bZS6HMVvVBbvFLP9JklhQsrN72a2WJj
 lz7VB5v4Z3PYB0heIOHgL/aPpcmvyAh8erfPnBzA4iKAacTOYYYiyu5nxVekDFP2w/g7vNVtRi4
 jvqQC1cvOwM5Q1aZnspKarYB23znW4JTZ+1BSWzMOrSTqEICSRZ7AtM2JNFfZ8GWLA0xOb4S5kh
 9KdRZWGev2aGYvVzrPhK8USy393UCTeyupWJTRLFjENNEn/UkGGG66QA7Qr9q6KknF4vLOiUMcP
 iozJUvlnt5mPN78+JIUag36zXLqeT49WhLWsI+mQBH+aXTgo5V2FJoAQFUsotabT8d8dEqaE+0U
 3t0b6AlEYaTSi+A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfXydGFIU0iQ7G7
 So0V2IrcA+cdufWOmz9qWMu+/IZLCKmmLogXKwJVQQLt3UGm8mkDyDh0kdi75mHhw1p1HGaaz0m
 A6h2PELMolbGD4EcNsCTs0kI2EacBaTdyhQj6Z6SCWJYRHMmfcSW9WLoY8uYei3wLGJgDehJHGa
 Rix9jsFYs44TQQQBzWkbOcCuxrjZSJdm918D+HxQtpwe1dLwWha/9I42Uy36fSMa5pZh2u/VTGP
 vM9oClWTFP3UNwWEI1xvNSviHdy44SAJfO8OA4CNDW2Q3BkluQLAAcrJkCAmiB2if5/x2AL1oex
 LEbU0mYLcpDYf3FIC1WBf5ouCMOklze+S0d1KFj3gnp1lRMA/Z6rMRJdqAzmVAOLN6S7sjIvIli
 lt8tLU58HFkAC1eFggeJ7LF443ZkceFSHdmVBwUoYK/DsuFOzZx8pSHJJfdmPOS6m59fPsQ+zp5
 lVJPRwjo5jH7K5il7ug==
X-Proofpoint-GUID: 8QFaO8tdTRsew4E7rQSojrF1AacIyksO
X-Authority-Analysis: v=2.4 cv=EoJHPicA c=1 sm=1 tr=0 ts=6aaae06f cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=BQ2oiuy6hHN+kKmom1QVvA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fYuUhxZzbo174WpB_3cA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: 8QFaO8tdTRsew4E7rQSojrF1AacIyksO
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX/kiXi1qo7e7I
 o39u1QxmcPxNIFVMkKwFeugZ5QfL0BhtnVJwIg1/dwUB+cDFfvlLnOsEbJsJrqiMyvP9N4TmNoi
 0fjcXXzQ9IZyY6zhWpRivEsHW4Tel2w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1011 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609160255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_113112_603598_889A3263 
X-CRM114-Status: GOOD (  13.60  )
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

The series documents Nord in qcom,snps-eusb2-phy and
qcom,sc8280xp-qmp-usb43dp-phy bindings, updates qmp-combo PHY driver for
Nord SoC support.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v2:
- Rephrase the commit message in patch 1/4: drop any mentions of the
  driver implementation as it has no impact on the bindings. Clarify
  that usb20 PHY really does not have an external reset.
- Squash patches 1 and 2 for the optional reset change to make sense in
  the context of adding the nord compatible.
- Fix tx_tbl register values for Nord.
- Link to v1: https://lore.kernel.org/all/20260901095055.42229-1-shengchao.guo@oss.qualcomm.com/

---
Bartosz Golaszewski (3):
      dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY
      phy: qcom: qmp-combo: Add USB3+DP PHY support for Nord

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 80 ++++++++++++++++++++++
 3 files changed, 83 insertions(+), 1 deletion(-)
---
base-commit: 0d9d0dbf2fddcff5859d623e90ca73c4054276e1
change-id: 20260914-nord-usb-phy-d6dd376b6b53

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
