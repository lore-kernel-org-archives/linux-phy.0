Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DDEC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YfIaYDhQInLZzouzMR2T3FPJX5Gbmo47FWNN0Fg9Y0s=; b=KYgapGAwZAL1Ec
	gMkjJ9apazFeS+A5nRn6jaCYiRfUTFulcXIHju37CS5G8wcQ4yCtUW/0tyIJQG7IlqDVKd8986sV6
	f+ZjjcY+ZNxaTOYySQOeI7V/ekfyv4jL0IbeCiZHRTuwO+kdUmt7eWEueFkMjGEO9TVzSgAzrBZKn
	B35eA368y7pdLHdHBFSIYhdknwtnVsEsYgtlCXcvmqA3SWY25ysC2jRXpopPp0l9d8XANLyTHYeDt
	kp9sDwDcOsAe1H5aa++OXjI3EBmI0EhhWl4ZDtJHx1pkA/HURy/XIxkVxHvqHG2TBj4X4k/NKv7Xf
	UJSK7fy0fQCwRTKTBbVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9G-0000000BTa1-0y2q;
	Tue, 01 Sep 2026 09:51:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9D-0000000BTZU-1zrz
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:51:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179Oak2321944
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:51:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WhRQE7fxgjYQGNy87/Z7kAzX41sDH/R/55t
	8bfb9X3g=; b=pCqPygv9b+63REW66URXSnPffvsI10zxgjYUO7gLL9kjUrq3pMp
	lrC4UHiPhZEwUUEIEc4JO7yi39ZJ61gjDZSBMJdBbuRWO1pUrWSP/qZPwtDvlKbu
	BCmp3ZCcFddKMmBqXB48fA4MfYM3dz7DyDNl0ZRbWAAdZo0Isodna6y9CxOqy99I
	UDFXq8XMTlqv65J6IY9tjkXS/uwxQ48nR/IxToLqhh0B1wN3Z6XG4sg+CfL5Qo4g
	FBLYwSTpjhmVEeXmUnIZTFNHSGmyuj5xmp1kMAZJ1TvT/3FSPfYZ8urwYsjDcRNt
	sH2gXemAj3JYyFJZtJPOwaPCuzKStr/K2OQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdfchba8j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:51:17 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1a439db36so1026140a12.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256277; x=1788861077; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=WhRQE7fxgjYQGNy87/Z7kAzX41sDH/R/55t8bfb9X3g=;
        b=FFxTsAIMXZbTHiJhIqh6kBXIkY9ibMtWXBOTQZ5fMpREH7ZwVdlUfIVChBIArzVn+j
         LW8engBJvAK3d+OJBJ+60tbtW7WbMzJIidYS4SfG4CS//oStOheaD9agsedN/AJd+cYm
         24EkY1pE0XeRSplcPNqUv8j57dZYhTyTuZ2dOc9fHVr2I686r86TdBpmzCbicGqMD7c6
         hytm15NEe/cYhOqcy+vSgR4zkVKI03Qx/BS3HIlNSwYllNC1721VXNf259l2gt3jfCa3
         o1uf7F32zd6dfTLbYtZjLch6W3hd0DGs2cWf/WsogOc3JDXrR3ykwLUzxyK7ts5k791I
         6KBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256277; x=1788861077;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WhRQE7fxgjYQGNy87/Z7kAzX41sDH/R/55t8bfb9X3g=;
        b=MBoUOoWP9xnejRWXG6KhTkJhSVOvWi75xfTX/pHA5t9+XhMjLbHCrawaVV2/cgfa8+
         lqjx3Wk1m1ow0PXWnGnSwTxyifnpCoTRZ1LuhHMO79Z1omnWPJItuCX/2C7uDtLQUtLv
         aCGiHMfoNmyKosl7XpjmitG1rYtwfhnxD1rDi+ercjs7DJlrfp3uLDWbO/1MyJVnLEtV
         wZWBgL773r1tgsIy1cc212AuVEtspNmxxelgGM54HzdI2PLDKtzdclB7GjIR8u/fLTpn
         2gdZa2l11E9kz0UJT9vF6R1i0HshXrFqoEj2Dt0uD9qEenY3DGkb2R7Ipr+sWLOJ0hIr
         32Yw==
X-Forwarded-Encrypted: i=1; AHgh+Rp1LgOWNQY/s0B+mA6TiSbHACjFdt+NktqjJYhwOp7b0X5wNIsyLemM8Ur7bv8Y7QDi7Vd9xfzWPHg=@lists.infradead.org
X-Gm-Message-State: AFuF++nObPggRlVx1jnolgsTYXShlCYuZ39RJInFWhH6uQ4OgpsgAUDl
	PRqBTkK4lN3OpDQt8HLmrbDFWeIcQ2cdOE0uXqrkvAn/fHvJ7NL4aaRZr7zN0eLDKMTG/GJ5U2j
	y7Xtt7xMrz3IB4PwadW0y52pM2zc5GDvJUTtGLJGIAn54GI9Nut5qIGo7EsqYY7B/R7tC
X-Gm-Gg: AR+sD130oKNorYQM1ew77Z3cUq2z0mBBKG0oylgVaznd1mNxxlqxm02oFuBGwaQxJ9l
	vfQ2j0qCHE/Tdzn/n6k7MItp/UO/0cddluOsfTI0C4wmagJ64l8l+Y3qnqM40qTuClNx5dZag6H
	614vX2/tiDq3yVHt/ykSfG3XkKCvH5Hcjg8xZXIvOWX14SOmAVGilXA8Fi73X5BJsKIE6m9T8fG
	0bPhzes30f3+a7N1ekOQ0TRLuOnuZzZs9E9DqBpdzOtGGjF0RWGvVfRf167RMOA4h93wDq1EW7a
	G9pnRkMDobXDEHyKVPpz0Bqf0sM/ot+1/2Q4zvLqYKBcCoxknckFInZUQ+T6tug40/O7UW+PwXL
	ljwNYGOC9tBdvFNnEL2g3iZJxHpyThc21QdPBD2wyTJ6rKsFmDuMSjifdr35A
X-Received: by 2002:a05:6a20:7483:b0:3d7:dfbf:7435 with SMTP id adf61e73a8af0-3d7dfbf750emr8395226637.25.1788256276643;
        Tue, 01 Sep 2026 02:51:16 -0700 (PDT)
X-Received: by 2002:a05:6a20:7483:b0:3d7:dfbf:7435 with SMTP id adf61e73a8af0-3d7dfbf750emr8395180637.25.1788256276245;
        Tue, 01 Sep 2026 02:51:16 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa37fa5sm40641466eec.29.2026.09.01.02.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 02:51:15 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: Add USB PHY support for Nord SoC
Date: Tue,  1 Sep 2026 17:50:51 +0800
Message-ID: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: -wjj6DMu8-DrOakQ6mC_yRGvTfmZMg6i
X-Authority-Analysis: v=2.4 cv=G9Ms1dk5 c=1 sm=1 tr=0 ts=6a96a015 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=3z_Grn4b4YC_H-RRj4gA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: -wjj6DMu8-DrOakQ6mC_yRGvTfmZMg6i
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfXwST8CDdCmt+d
 N//gVfXQOzZYyAZGL+xIrwCoflDpCrUWeezATrgnkV2eyf2n/NJI6XrEYZodbEmhPIeHvkMdg+W
 ulZt+k62goMze/HJrBUiW8gyyXV7u8I=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfXyomxGgnT+wC6
 OBF2cz/jLNS91Dnvr4I4YVaGU1LqA8yRTUo2kRzrYEuZ0pqwRVOJ0Oy1AIzr+nv58RiR+dFlKLZ
 rugk31a/E2HyjWpnnw8U8dQsIel35GbZW24ttWTL2PkboWP1ncKjSvah5NfPghmmAHXM0kdygxw
 sHPGVCzbmxfzc1lrHFNDiO9XSp5ry8iaHrNxY/UHiD9DOfXpVC5lrl/iWQr6kkz5RZbnFuZ4hfa
 0WDAxUDcWUSzgPiDNdOpxzpkVItu844ZKicaIydc6Jc/yABIkeEKNXFi2i0nofOY/hfUrDDvQZ/
 MLFWhz2ThCYOMpe4yyiRfkIm/gh+UQ5HWvCmLzC9+erz5dIjL0RmJrIDZJbJMb5AwbNvnVGdOIo
 kx+c7G64jkEv8PRvqhiUMW3isQHlmNq09wMAhprSfC65pmT51s+x27/Gl23yzMWb2bpXyMh97dz
 DUd6epDT4tdjP6A1MsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1011 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025119_631043_12D3F422 
X-CRM114-Status: GOOD (  10.35  )
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

Bartosz Golaszewski (4):
  dt-bindings: phy: qcom,snps-eusb2-phy: Make resets optional
  dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP
    PHY
  phy: qcom: qmp-combo: Add USB3+DP PHY support for Nord

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 66 +++++++++++++++++++
 3 files changed, 69 insertions(+), 1 deletion(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
