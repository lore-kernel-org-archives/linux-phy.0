Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C9CC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOOcPBFAE1C2BvDITjkrT8kvtUlnSnZqJbDSe6Nav1w=; b=kdbGsB5eU7TITV
	dlKu1b8iXJc1CQnAgj416w2lyhHvPOtDE+ISJp//mRCry0v2G0vTuYG8EjDBOYgKXY1UbGYlmV2a6
	HMoJ9wS8/UyKMwUje6g9zOx4oVlIz9dickX6VP3mtpExilpirfZS8ePUtueEoZEO3sWi76crYEz8C
	qMGUbmRr1z2re0JjdUXpVr7gZLCjaIXJXSja5DW+7+BU96aU24lBw/lXir93eHdCSrI90IcMD1ZeV
	XhI7KIGO39RFnBs/PH802AEyoF/rVASQyMrtnXi1G2nxL5UbXQj3XlcYePw/Me06534NL+VVMgVAa
	7b7TYCcp6idp331XcecA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDB-00000005wRe-1M0i;
	Fri, 28 Aug 2026 14:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD7-00000005wPX-3jp5
	for linux-phy@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=wwJXfsloAAB2Apjdz82YrMfdU41yJCnHm61R07l03yk=; b=mCXZpFLJko56rks+SrkggAUG22
	s+tw6qksXfbj+pgG87nV5uUC14ZsE/xwRNA8a7XhuJLZrLf1aEmxNt+d9x4AVR91AGEp+UvIe781b
	I9rhaF6TfF3NKVbXTmbx84vsBnjES/6AcwUlzkT77EVv7463WCAmtysEa02g7i/Ypo6mITEtTqja5
	ZtCAc4v5u25zOab64/Mtw3r0X9fcD4j7kY5DNYR/IsiXe+76TrVrp56EFczyyYxvopSPiYvairIE3
	8qlMmntPi8NTH+6TVJEJkYrgCbk7WsQYQwB3/DHS1bxbkFT0i7PomlZOZsfrmMNXcdlGDcwPLdeVK
	pY/8sccQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxD4-00000008IqV-3JVn
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkpbS2970084
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wwJXfsloAAB2Apjdz82YrMfdU41yJCnHm61R07l03yk=; b=ZBfhaVaCZEfk2qYq
	ML9UNTOdC1dOx8kAWqDYk00AixzNQGD6WaOideeHLuvOI+h9hHSKgOxxbfOFi23e
	8otwA5vS15tbgp6/A27Kbi7DWKX7poeM/Du7MkppzH6mQNXlP0Z7SawzXujUMv+w
	WV3Uh/63GjdLkDtVGDE86Lm0E0afZlpRNup6hEngXMDZiFKowvTgU1EAxfK8utke
	f/HhGfcie1DePr5yxCiInJzP/NxENG1LnWZ9S5TCdZw7wBwmw/JNA9WfjMAwI9pB
	RIQRpS9eAfuyGpp/0qOsivnDYxPuTERyepcB9uyDDunjISGuuI54RUkO2JrE3VgZ
	1xbqAg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3hs245q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:31 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-785b66a7017so207127137.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925930; x=1788530730; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wwJXfsloAAB2Apjdz82YrMfdU41yJCnHm61R07l03yk=;
        b=VDXisiALIwr6KekFTX/W5JHhFLxkTnVqTgCl0+VBabd2ZsL5zOA6gHQQYzf8PBGt+a
         3u98XKpYVaA2ZXlwaTGnzG/jqCdaLAV0FXbvZ4J9NcnnXeJjgSoMf8gTZn2FTtnSr2KW
         TZk75BkJ+UQwqnyssAdEFqLSfSaIoxT0FhTpLa307XOkvkhQKZlUWDm+8bdvANw2NAI8
         me2DP2B96GZus9qS36dKjDzFD8mA1CQ4RPBO13KqouXweYj/Oo6NNBGAY09LNXQmL2oi
         Qmsb/+KniIzl29p9xUEDNY6YJIoj+7A18W5Eh/pyIPE+8/m4AgZqRSdIdkki/csTGQt5
         nUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925930; x=1788530730;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wwJXfsloAAB2Apjdz82YrMfdU41yJCnHm61R07l03yk=;
        b=Or94zbkz1mXNd03uxvtO9OBtISyYxo3GhdMO7eZ3iWxnuSzz5Wy/BTl5B8l/dhdP1f
         E+hg1SKZPM8c6a1N/lgxNDFu+bc/by5fd5lSlhD2JVrr6YqSRRMdaleBhRPwF628d2xQ
         ZCjrqhIS7i35J0Fj40Cy536Cu3q7TX2XsLAQyTxeO1aPDT71FqmOKUjxFL8QGN0IOee/
         ZqnBsb8bwg/1Yh3QHpNWmnSwNla+P7P85uTJx3wu+FEndqD7UpX/AnwxlPhH+PltsjoL
         fK0KmIlDBAVy0n4zMDzG/aCpxwT9Zl2CRdN7IBQYcXmLJB52ftMEQuA2svsawUGrrjpq
         hUVA==
X-Forwarded-Encrypted: i=1; AHgh+Rr1JglyIQCPeh9Yz6tfKDMA4E1e33qsEhE8boZsIdLqnMUjFtt8V1sUnwqrBHrfI/Bl90FywUFUEqQ=@lists.infradead.org
X-Gm-Message-State: AFuF++l88O+4nltjXmNro9OcpI59F+5xN4X4oBcXYFDXA2mxslsGqB4d
	jNOjAgKFnkDIDWN3AILsG7JcDh6d3jlguVbfX//DfzXTXH6Eewva23kRJCr/xrh9rrvBo8v/Jm/
	4eLzG0O7UkH5YC/2EGclEoeA31OP2Y12PIIlYyFI7F9pdJtHywt1vBd1fxvnSdRn6dbnz7akGOu
	Sg
X-Gm-Gg: AR+sD11zEpnsTWQAlQjMAp7SDp2iXDp5UPj9zehvTv7OUfnLDi3VDsjOJ9gAAXBySeY
	w12LzbSgu45h+3jjLbDo/62YMEG4NKQUpHoALIMD2nw6m/EeNJD6Oa9wuZMrs/ijq3420u8Awmk
	AEua/QeLNs1Hhbxi7POZh2BAIQbh/YpndZwZ1shL9XlL++uC1iwjyd4mWLDoHO6TTI3gtakEpeL
	YN6bonLqBL8TuQoqPsN3L1aG7mYG/Hbp6INlLpmE/UCkiNgoiSe5+27hFsUg9VANlLHxEi6Vbij
	G6Zk8cqUqUmAG3mCobs72kIDxfyytq+SRGRdhmOcIv5e6Lj2oaJtxzBo7MyRoF8DS3g7sXTwLFC
	NTQoEokbU3SXobjR8WDzItRQ=
X-Received: by 2002:a05:6102:14a0:b0:779:e75e:63c6 with SMTP id ada2fe7eead31-7859946ad68mr2106174137.12.1787925929660;
        Fri, 28 Aug 2026 07:05:29 -0700 (PDT)
X-Received: by 2002:a05:6102:14a0:b0:779:e75e:63c6 with SMTP id ada2fe7eead31-7859946ad68mr2106111137.12.1787925929014;
        Fri, 28 Aug 2026 07:05:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:04:59 +0200
Subject: [PATCH RFC/DO NOT MERGE 01/12] drm/msm/hdmi_bridge: Drop redundant
 initialization in msm_hdmi_bridge_init()
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-1-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6C7io++CE3SQq6sBfunNn7UU9vPIt0aJqSBWy3h4kY0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWYBkZ3ElfHZH7luw4aONZGG1TFyP5WiPuVu
 rrHWEkjimOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVmAAKCRDBN2bmhouD
 180qD/9agwFhWzbkDBY+PenlIgFa5fGuW8FDEGsNfrdhd+XlCkdbjDBPnllkZ/J09DczYm/Iy1a
 ++lWEeRO/Y49aWzDmYBf4gD3Ip0bIippizJHnyNMqkoNpBasveavJAwgAuexR0831QPXoRq1XlW
 8VWJexZlqap6O+juK5mOzyEoZtKrmAT7/H6xQK2hz67hJ2UdKwON8qPfnKMjhKi/H2qTVL9oE53
 4GruP9zO4d7Yx5oDDZYH5i39GdKPJc1qfkNNio/8F3RYxrIh7aMHcvcz6m/P7BnJ26IK6ycJDQG
 B5wKuX/lC4T1qL3ADyrwJMWOQBl5Mz2+/Er7SkQP8gpaLVoIUjNp1i/SzTSKpAsqfkXzCyy6T4p
 UEIJLA1GZ6dPdth9R7+0ygwkjQCfqhQM5DSc7bCZDJUC6cKxk7fu5EZR2/TeEP2XXP0wYU5JTwv
 Bcl05VsOqAOhyVoFBwizr8azvUSsq0ags4CeNfemlmsQ9ySNACLsODUu6ln4NELyzp3nCFRfmkI
 HoItvt6InCDWoQNHjjmogmfD4CuUf51QImgUg6AVKjTj3CateCkHuamAM+dgaBUVwb3MqZFUqPf
 h1Y+kaRm+FZF8gxrczhzedIPxqaY5tykIAMYOGoN7GP1qN7m+sbybYAIoaN40lKVSvWlkBiIleF
 zoX0vZjN29TY/CA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=XKYAjwhE c=1 sm=1 tr=0 ts=6a9195ab cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=qMQyP1WGGgURt2cF8gsA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX8ehwdQSZb5EV
 ZfpEf4N9fJlO7pGD+p4K9MB+rTX3wDTS2DccLRIinDe/AV2K7QLBdcVlJx5JrytxKOc9ZzpJAw9
 INldTA23o3JVvFdjVCEvma0pky3shhVnnj1NYUfuiAqXFxeT6jES0ZurIaTqhhqBI/V203RbkHD
 J7MF4CzNaquxAywRiiWc3GLJ8niHD7jOQ1RnfI0NeCEJJ9JzRZUGojS7aV7OC6d3x6qGqNFjEbH
 WcS68zGU2x5jB/+DYeLSR6zXOlu3Wn2g5MryvxfM20fS2KWjsVLMU2A6ZiGlTL/kcslUlW0W5wd
 yL2QxBSIXgrZ9ZaAqaIVXEtm8eUwlF86Hwh7w4/YJDV/i1Nm8FQ93HeY1hqU09qSCjW4OcbW/gQ
 b2+xj1r12dSFoZ50L5uYXuh8A0ykn+c0Kofb55YIL6B2EAkVqVykthwSeO+Sh8TOzwTQ3Nkd25D
 Pccxy8Tq8y3o+XaSlsg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX1VRcogXAj5SD
 /GrGSJytYnTlx7CJR5z1aoOTLidUwg2leqxYv+jdOu06t0vQmbZZqI//HdZlR72gdUAXNpdaQvJ
 srbiWRVxIyFqBm9J6HPbTxHNVxcdj10=
X-Proofpoint-GUID: ku_FNAtMTNOUnN-ljGP_JC6PEm0HIRuM
X-Proofpoint-ORIG-GUID: ku_FNAtMTNOUnN-ljGP_JC6PEm0HIRuM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_150535_156187_5F9E3B85 
X-CRM114-Status: GOOD (  12.48  )
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

Local 'struct drm_bridge *bridge' variable is assigned in ~13th line of
the function, before any first use, thus explicit NULL initialization is
not necessary.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 157f19bd90b4..a5f891661ea3 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -472,7 +472,7 @@ msm_hdmi_hotplug_work(struct work_struct *work)
 /* initialize bridge */
 int msm_hdmi_bridge_init(struct hdmi *hdmi)
 {
-	struct drm_bridge *bridge = NULL;
+	struct drm_bridge *bridge;
 	struct hdmi_bridge *hdmi_bridge;
 	int ret;
 

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
