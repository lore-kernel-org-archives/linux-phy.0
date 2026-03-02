Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40B2D58E7E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 08:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7GSV0Vnj4QGHvHvN6izCH7PK6AB/sfvznAur/a9YI7Q=; b=R1PAEhddpgUTQa
	Nf2Fr/64pYJ2J21zZvrF5fMOG+oJphQFd3LKhSD4Q8aphE6/teeZ1/QbrC2rKx+PmHWegvkSg5Eqc
	wifDkDMXJ60hUfwaNLOqxi47vBgrpUvtYuSYhJfO/3wNv5eqm2T5yNR/OqAyOxtKNPKYREj1HRRuZ
	KTZ9DoXv9csPWqAjaqq39eOG7hLjM0uOw1OtBA74RXi4X4Roq5sASYDyCx4Dy24arMCoc6SoZ0O8T
	ocpz3CP3klPeSyqU4mXxboLNgp51yIo+fG5QKMzBzMYDpbBmf4mCR5g0TZh0Jh5V1tvfCVrQxqZ+Z
	X3AJt7qIik2ORLwLPRow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwyk0-0000000CWXU-1oeh;
	Mon, 02 Mar 2026 08:35:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwyjy-0000000CWX9-0lnO
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 08:34:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227JGx62358125
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 08:34:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=RSgCY2ibQ/SYdWdqT3A1t1
	bquvViGR7aFSVt4FcPst0=; b=SQw2e1dftPaIsZSl4zParHJLvfoQ7mQJ/RB1ow
	h6xyulwIoBwZTlrlDgNCF6XmTuLwUNtFZkbjpcyp+lOQSBBnjatZOtLT0v5rq2Zp
	wUghxdpP/twmhYupH114Gqe/Vy4obgwicZDp0rwAFL5PFRGdzVR/qpOJjB5QF9IH
	H2DUi+mBZfkQfXdAH16JNDpstB1J6/5AoD8R5rtqiz1sjeKiT/Qu56T+JxrMP8EK
	3d+x6XvvU2orJE7QhgkywErWGOj36NHTkyfx8RE94wm26+yP3RQXH1sM9t1+Uayl
	58ou6lxTojx0c0gVOldE30NJgiWPTrJKfKsp3rjuf5REBEHw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbath2x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 08:34:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70b6a5821so2808773585a.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 00:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440496; x=1773045296; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RSgCY2ibQ/SYdWdqT3A1t1bquvViGR7aFSVt4FcPst0=;
        b=MQW/BXcmZ98YtNZpSLFVmJH6Dce83wSIQaQqEAZL+hiDABwOqEJZs4Nne1nZMhE2kZ
         GEJ4UgthsrC5ooV0HZRdQeBSumdsCQN7Q7OWjsbup3/i+JEtFyIorFtCMkklR05XumWp
         YNZ2fabnIDDaB0tIAB5ALLA5sSfJHskwE8PWpEPZZGcGDvfZ+y6oK3E8ruJ3/9ZFMAUy
         KTlMad0VjoYc936C3mMmZ9B7QcuUIJF25VTtlaqMGobY6vHCmafvGHOZTJvQAKtsGKqi
         ugZzgf+k4LTpAbkBGy/3m9D0zYnDFsh3XAuaVuqwnIFwXsPdXxCJEZRicA4wb9ME8/Sp
         uUdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440496; x=1773045296;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSgCY2ibQ/SYdWdqT3A1t1bquvViGR7aFSVt4FcPst0=;
        b=G8T8kirWazNYY2aeFoSQCbdG2HyEoKpgk6QXsew31IcFjCCuTvms6MY4kglofAkDCF
         +Z3Ivqt0F4N9mNt7oUZYS3isp783FBWvCfKtdNR3mkCjM3QH+9N78JgNtRDO5Yj9tXZA
         I/ozqwhQD4TZ2bvonY+EpuhfD5xGYkaTh2RgamTEyz2fAAKqb/NM6aOtNj+QGqeDjh+U
         r898fmBpuFJJrtc89UyPXVYw1oqSZe5Ag5g9daFUOtZhC6WZ6Y74ocUG1oCn+RUHQPv/
         wXXaRQH+ulxtBQ1yJuDxLb9cum27cIppl6kYIAMOScenBYHQQcTCmoqp1hOZ4qoYZPr1
         boYg==
X-Forwarded-Encrypted: i=1; AJvYcCX1vxLEO6Rpui40dNL76pgBdF5KF/QaSW4R1506u0adrJ9oL4PHM5+u9mjDwLJajPwDjRRl15pWA5A=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKxxEzsvWFL0XNbkdfRvSJiAP8oHTT/ylTgsUzl30Yr39du02z
	tGU2ukw/lTMjwmFRjQt0DRD9F3vGveqRQaxyFAsw93GgUugHEa9UWgMGtrFDIbdF8fd3KC9yUk4
	CX/5M1u8wEsqIJeDnNhTJfbYtMxCWyacOcorv8+kvavBreYbFBXgQo/4m5E5MgheGV2v3
X-Gm-Gg: ATEYQzwz0V5xbDLU013HgZdErgUA2Xh9DkzXfg8ssVdhCQsGP4nybWSobHbPfIEXV1j
	02vt4NFGpwo487zIdVCZ99zGwjQzO2C8GCtOjsrgpU0AE9ok4sUnOL4r7EAtjetkU/TWLMFQJlx
	qPipQb5ViFwTS5/bVwChHQO1YDWWNmSuHL8QpSGsCd6onhOzTjmtjULU6p8yzZO4AOKaOdE8KZF
	6mKdAAp7FqeuUN3+zpPLCEAF13VTbgZT5MxCqd/GK1F/N7Ay2vctULvrqCrzwLWOTWm/xMUHxFl
	etM2Sh8eoBQfOYLuTeUxLsNmUnj6c4SWo6yxVir+Wc7QLgpIDFBtKvanvEhgdp+1YpG4LGvG4T6
	sWcJKbVEk1wUDlN7qsegOJn7VVsdDUA==
X-Received: by 2002:a05:620a:3192:b0:8cb:3a1d:79f9 with SMTP id af79cd13be357-8cbc8d684dfmr1290230585a.6.1772440495967;
        Mon, 02 Mar 2026 00:34:55 -0800 (PST)
X-Received: by 2002:a05:620a:3192:b0:8cb:3a1d:79f9 with SMTP id af79cd13be357-8cbc8d684dfmr1290227785a.6.1772440495330;
        Mon, 02 Mar 2026 00:34:55 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb776dfsm228285425e9.1.2026.03.02.00.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 00:34:53 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 10:34:46 +0200
Subject: [PATCH v2] phy: qcom: m31-eusb2: Make USB repeater optional
MIME-Version: 1.0
Message-Id: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKVLpWkC/52OQQ6DIBBFr2JYdwygVdNV79G4ADqttCIIaGqMd
 y/aG3QzyUv+/29WEtBrDOSSrcTjrIO2QwJ+yojqxPBE0PfEhFNeUc5rcN0Co7IGTMEApyA5GPF
 G8OhQRPRgXUwbooeKM9UopmhxLknacx4f+nO4bu2PwyRfqOIu2BOdDtH65XhmZnvuH+/MgAGtB
 W0qKYUU5dWGkI+T6FPd5OmQdtu2L1hQUFv7AAAA
X-Change-ID: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1996;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Dwso8k6zIb/2PduD2Fq0IzKjrdMHmiN2lXGM/UurV+Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppUuo8fGETG3/NJENugPJUeArWRVflt3X5yH60
 tQJV0wQqGqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaVLqAAKCRAbX0TJAJUV
 Vl3qEACssR5KcMRfhwNZJim3fNeNU2JpY/gQ0FOzhuVCW7TcZO3Vt+mvq2dkpCE9IUdqQ+73rvk
 Q6gwP8UkKZ6okdyW1FqkK+n6wNAXy7H+xB8ZvdA3m2lTIG8dexkRWB61ZnQ+xM2NbUGg1jfmIkz
 CSBJA+IDEvH6Vd34dZu9IW1KRAYmZE8qlDfOE4reCdnUkRbguLa0+WeUMQLpvOh01iDVNvbIC7L
 uvfhd+ru3cW4vTg6TO3TQqyaSJlrDJ7qDD8wK5jG59byO8BXj8Gw7Wt/Gq23LENUyPEDYtJMh6z
 X3svHrVGkw8iBpIOBItgBMVRyEf1tbKTY9QMT5a+imV7MseWN0Fr5gNtlLbuwuNdJ4VkEgHVtML
 zFA9hQmIBoZmWFQ4kZWIFm/WagN/O27hRlY/GUFKY9E6kkCGGC7DodTvXYJAXN5pu3cwJcjkYqg
 OOuUyDgiBk59up73NLqz9iTJ1zvs5bzvu1THM9QHr/BG+L8EnOw0/KFCUClUr74tKsxQZxBrC6+
 LCN3sKYOMGQnvhC6jX6/cWQP3FoQK1Nquexic4aAzjKGIlFk3+iEWovYWXiWzpivJqBjqNCvuHI
 G4plsrf9peFt3z7ZxjjK4znOEyTQxqK79q6JLGOC4BlNJq3awXVZviq/0qNwpKc4/W5vapBoDyi
 pLMP2oNLu+yAk0g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NSBTYWx0ZWRfX7njVnYT04gxU
 c+yUYr9Q3fyD3WcFsHVgGShNbPTPPKPeKV6sZB940EXN1rWL+l34XsEN9F0cahwlHNpEALYejzJ
 oiS8bz5oCASkGJEV2F1/frGn6eEAjwhJ7KW5LJ7gRpdMedhd2G6aKtBoaJYO+VftqLA8LGpmKaI
 nEOWyo7+C1VEK/F4Yyb0jrLgzwqW6Zh/dlRI2DNZvLxKuuYdnqU8V0+JWt6e7zJxq8Zd171M/uJ
 oERjyM2l+Ue+JOQDTLhQ54mwCeKe4dtyfUN/BDKlm6BZlZ7cyZOahB+T7mkjQJNXkSDeQ6h1qy3
 oLq7X4rt+zfJmEJNQho9KhNWRXP9/ZL7uBvKdDn2X7m/AdppR+Ev8ALZq0riEcpudys+vYA1TcW
 xLhKgLu4YX8Ah+q77WeiLJ7Dtc7RpbGX/O4rQVrlEOPzYtNJ1D5Q0FuPxrFCrGkgAKCT+g7jy94
 BbTMRyfTlgi0w034+jw==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a54bb0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=-yzJJKm8KVfH7sqCjyEA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: 4-8xBYeG6SD4Db-ZiEYMwdKbUsVygOeL
X-Proofpoint-GUID: 4-8xBYeG6SD4Db-ZiEYMwdKbUsVygOeL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_003458_379553_CD089009 
X-CRM114-Status: GOOD (  14.58  )
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

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

A repeater is not required for the PHY to function. On systems with
multiple PHY instances connected to a multi-port controller, some PHYs
may be unconnected. All PHYs must still probe successfully even without
attached repeaters, otherwise the controller probe fails.

So make it optional.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
This has been sent initially by Wesley here:
https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/

This is still needed, but for a different reason, so re-worded the
commit message to reflect why.
---
Changes in v2:
- Picked up Bjorn's and Dmitry's R-b tags.
- Fixed the subject line, as Bjorn suggested.
- Link to v1: https://patch.msgid.link/20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..70a81ab2482f 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(phy->phy, phy);
 
-	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	phy->repeater = devm_phy_optional_get(dev, NULL);
 	if (IS_ERR(phy->repeater))
 		return dev_err_probe(dev, PTR_ERR(phy->repeater),
 				     "failed to get repeater\n");

---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
