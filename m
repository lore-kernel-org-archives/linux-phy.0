Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA9AE9129B
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 09:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Knk4RGTUqvd9kc9gwt/2fEuZYCaBaRvRMGbfUXgOclk=; b=0N/IeMnMH8Wy83
	FUFAbgGk6L08E1n1C0cTRGlw++ICAgMBocvrAEaZ3UtI1yrguUr6ZmOzMXHAGLkZwXXUPVhFKJrxG
	tkrcvhW9RO8tPVJfiAHSv1SnJVJsHgjrNd5nJvWCV/hs4Hnw0IR0q5oMsgVM70reDMnfKe1L2/Nou
	dduXq0ojkiTRQ1hY/G8dLBzNhdTdy9xNtOP/FvWW40r7UojR9YbAlOoEolaggeKB8BvvvznLtzWRf
	6kZWeQEYA7lU5XV3dTASWZ2MCaOVaKKyUB9jDXOtHFoqWoYvNCG/z9hzwtzxZop4gKyUZl8zjFeUz
	8QpMs+ia1pX4FPe6EAXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvY6-00000009gve-3tUm;
	Thu, 05 Feb 2026 09:21:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvY0-00000009gt3-0Lxb
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 09:21:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153f1cU2761811
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 09:21:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jNaLzAhccsQGnghKHwgdkz4yLlY7liCyjd5PqcCdZhc=; b=Cl4qwNsCIds8SPzg
	+SSjWdQwUuTPtOiSp48aCteM2tT8uaAqElOhIu0BH22W0Qx34+qjGseQvwIAbzFC
	okWUFMzelnF3k3YqeolYTo5pWwYwMfjMYR12CQAVI8gVKN0Jven6JE6hS0u2Psc9
	fd3nOh4ZF4D/fW0VsqB30QuxeWCafQt48wESBKeNV44pQSpTP723BhkIuyrHlPHV
	Ve/aWwNHM3Rk26TMkN5+SFyKG0K9apkDgYF+VSDq8o070WaDO2vrahp0deeT2yh9
	iTyBLpZKkTvNTlQ/WgfnUyC3RkmxtDQUnW6yFcpL59+tMXNcFVtV+R+g2wLRRkSj
	rk0tkg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4jpd1489-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 09:21:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52c921886so59479385a.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 01:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283270; x=1770888070; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jNaLzAhccsQGnghKHwgdkz4yLlY7liCyjd5PqcCdZhc=;
        b=L/nwMqWdC6tDujy2KGT+FFyDGpGZ2hq59XJvEK1GEUT+crFrPqPCDcvZFvgbDNOGVU
         Sx9z46PURmw9RVxfppZ+yqf5USyh8cvv7ufSfbgT4zRn7anWuNYhKhogIUG/+4DnNu2j
         mxUcctp9K2dnHVWLlNBxHdX63dxrQda1mcgem4x9VyZCyIDj9g11Pgs2Mf0oNXA400rv
         Y0fJEeLXzc2xhtF6JZsiDV8eMh6LqNQwRfLX+XjVGHsmGOr5WzRlVdCrMmLoYdh1Lw/H
         d723Jzz8ah0p76WnzvKicEv2WImhUGNJbqAoj1YCFvJun7JEN8zf/1N07z++tmGtA/YT
         C5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283270; x=1770888070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jNaLzAhccsQGnghKHwgdkz4yLlY7liCyjd5PqcCdZhc=;
        b=oXFmjembSeaRyjz6UhE2jeFz41+qt3J1+XeD8uD2bTPzsFc6+BKIqy8NHlFhhbExAH
         CIOuFml/vfsPJpfuaMg9r0/jycM0kJqLwFg5ac0kF6YJOr6Hc770X2VPwKK4oJwxSuk1
         tSJW7BlYLp4z/MwwuRtTn/znboPne1sUj/X1YvQxYKqTzFK/tesEePelhxYrCfiMhRee
         DRYgIf+L4zWEDTvsUgwJgeHnZ/IeI7UOt6oi6OG0Lkz2sGP+RYd2iyLaMOk5LB7SEyrt
         uVLL1xxr27A7tD2i99mmi45iODL6ClnfZmCYR+5nBa0sloNZPNJQrPpKp8bPotBbDOfJ
         5I+w==
X-Forwarded-Encrypted: i=1; AJvYcCXWBEVEzw7ugRKqfWR/6V2oL7As2vK0MZUepQpyJ9BgdNaYig+tS3Yu+ofCdu4TC2Altxk15lSJCpg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxdWCsD2YAsYrS2Ugloq/Qp0tGlN0PglAt+gSEwEffth35cJp+
	LCOzA1crpZPKVyrjgaea99pBeiRqahn0wOjdQwX3hgMQlCHJ6Sfi4rj/xOw3T9pcTyS9JsFbPaJ
	ACImKTce7u44yI+Qq1b5bt+SOHIK6/2lBB1SLb9TbxlN11TYnFlmV38ACY66Uyw4v2YAmodOew2
	8t
X-Gm-Gg: AZuq6aIq1UiQmbOuO0z393M9h43fmpC92Fi9ckplBmzhDDwfxjQoRLfkTYmfgCeT7i/
	nehCZKRmuFfuEnFQXGkZ/YcR0FzaIFbfI8p4e+FEVJnd7k2pNHQBZPaPQiLLMS359dLk5HfxlT9
	/L06wwspGSoqbAOOPpsei5G+stnFhGR5fzP7be3fNYcI+fivwsuxLucO+2hGUPDhJETQe+lBQ8W
	5WuQJk7/+bGk42pF48wwz34GQZsgy8Zu49yELiBrbIba+yn3/BdnPmhspEAuuFGGHIuu6pxaNd6
	afpfRBycsf0nKPgmkanOFHHsW9YK4WEyJ+iRXXdrK8XHbH2Cl4cqmb5ziDp3agY2jDUQhtR+pOB
	itDlnnXSD3xmxvUXxqIYan4SiPH4dNDqtWJG25Ohz0i2GysWw+yBkbFdtP8Ljo/JmPp6yg8k=
X-Received: by 2002:a05:620a:4629:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8ca2f84a173mr843233285a.29.1770283270479;
        Thu, 05 Feb 2026 01:21:10 -0800 (PST)
X-Received: by 2002:a05:620a:4629:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8ca2f84a173mr843230785a.29.1770283269996;
        Thu, 05 Feb 2026 01:21:09 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2c3easm353674885a.32.2026.02.05.01.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:21:09 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 05 Feb 2026 17:20:54 +0800
Subject: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
MIME-Version: 1.0
Message-Id: <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770283262; l=5992;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=dhNtEciXmxe7JOgKKpPwPoFS/KpvqGImKVUMYUBSVDI=;
 b=t1Qg1qmlB/s5FnDaWUtxt2AvlSg9gQrY/zes/o6FLTiWxnP36YjgHcJP8hsZj7dpX2xzVuEth
 32vuizWSdgMBLFRFsK92V5YcVT8hSwu5GfW3Zp+nm6hJOEP9jgjT/08
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NyBTYWx0ZWRfX/rnXjRPGzeBW
 c2JhXHHYwdcdHVWok4ZrYhAiZzTCM13Rzi3F8z7Ucc22ym5eSjOPclqrSN+F7/GgGFwfTRfVE6p
 wdkZTKbgwcFj6tlibVfvDU+IysfB0cOW0n8sbKhfH6g7KOe1NoMkUaoovuMw87GlmoCbd0oV3I0
 V2xSi+0yW5V6I1h8YFVCh3ZMQ+86CnBKLB4kdbJgVR7EjL7L3Mz7yUcvcpYOlTiJsuRpJpZsW4B
 GpW2l/pn/B8trQY8DH/XdEP6Gt/me+1pVH3aCBy70IPEyqYXP+f4sNXHHAky1BRpEG6ovCfPenx
 rCqRS7XF5sruQyHG1P+eLAkWfo9LrK56AbYZYlYndaU8ypcuvyvcza2XqQYlMlbs6xoBo0gRDHU
 Mt9mbSlVpLwShwf2chKFqC40Jc8g59W68NaTQUKw9ui8mwbgLVgvjLa4Im+N5pJpX0GA1ruh+FT
 Y23aHr2VzrsGJKNKa3g==
X-Proofpoint-GUID: 2Z10Rjjpd29wd0MpeZyfgFUgU6hOF6_E
X-Authority-Analysis: v=2.4 cv=d7j4CBjE c=1 sm=1 tr=0 ts=69846107 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7aH6mENmw-U4l7sLY48A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 2Z10Rjjpd29wd0MpeZyfgFUgU6hOF6_E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_012115_090549_55A91A2C 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SW50cm9kdWNlIHRoZSBjb21fbGRvX2NvbmZpZyBjYWxsYmFjayB0byBzdXBwb3J0IHBlcuKAkVBI
WSBMRE8KY29uZmlndXJhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hp
bmcubW91QG9zcy5xdWFsY29tbS5jb20+Ci0tLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tZWRwLmMgfCA4NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1lZHAuYwppbmRleCAxMGNiYjdkOWE4YTAuLjM4ODIyNmRiYWQ3ZiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKQEAgLTgxLDYgKzgxLDcgQEAgc3RydWN0IHBo
eV92ZXJfb3BzIHsKIAlpbnQgKCpjb21fY2xrX2Z3ZF9jZmcpKGNvbnN0IHN0cnVjdCBxY29tX2Vk
cCAqZWRwKTsKIAlpbnQgKCpjb21fY29uZmlndXJlX3BsbCkoY29uc3Qgc3RydWN0IHFjb21fZWRw
ICplZHApOwogCWludCAoKmNvbV9jb25maWd1cmVfc3NjKShjb25zdCBzdHJ1Y3QgcWNvbV9lZHAg
KmVkcCk7CisJaW50ICgqY29tX2xkb19jb25maWcpKGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRw
KTsKIH07CiAKIHN0cnVjdCBxY29tX2VkcF9waHlfY2ZnIHsKQEAgLTI3Myw3ICsyNzQsNyBAQCBz
dGF0aWMgaW50IHFjb21fZWRwX3NldF92b2x0YWdlcyhzdHJ1Y3QgcWNvbV9lZHAgKmVkcCwgY29u
c3Qgc3RydWN0IHBoeV9jb25maWd1cgogCWNvbnN0IHN0cnVjdCBxY29tX2VkcF9zd2luZ19wcmVf
ZW1waF9jZmcgKmNmZyA9IGVkcC0+Y2ZnLT5zd2luZ19wcmVfZW1waF9jZmc7CiAJdW5zaWduZWQg
aW50IHZfbGV2ZWwgPSAwOwogCXVuc2lnbmVkIGludCBwX2xldmVsID0gMDsKLQl1OCBsZG9fY29u
ZmlnOworCWludCByZXQ7CiAJdTggc3dpbmc7CiAJdTggZW1waDsKIAlpbnQgaTsKQEAgLTMwMCwx
MyArMzAxLDEzIEBAIHN0YXRpYyBpbnQgcWNvbV9lZHBfc2V0X3ZvbHRhZ2VzKHN0cnVjdCBxY29t
X2VkcCAqZWRwLCBjb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZ3VyCiAJaWYgKHN3aW5nID09IDB4ZmYg
fHwgZW1waCA9PSAweGZmKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCWxkb19jb25maWcgPSBlZHAt
PmlzX2VkcCA/IDB4MCA6IDB4MTsKKwlyZXQgPSBlZHAtPmNmZy0+dmVyX29wcy0+Y29tX2xkb19j
b25maWcoZWRwKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OwogCi0Jd3JpdGVsKGxkb19jb25m
aWcsIGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcpOwogCXdyaXRlbChzd2luZywgZWRwLT50eDAg
KyBUWG5fVFhfRFJWX0xWTCk7CiAJd3JpdGVsKGVtcGgsIGVkcC0+dHgwICsgVFhuX1RYX0VNUF9Q
T1NUMV9MVkwpOwogCi0Jd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsgVFhuX0xET19DT05G
SUcpOwogCXdyaXRlbChzd2luZywgZWRwLT50eDEgKyBUWG5fVFhfRFJWX0xWTCk7CiAJd3JpdGVs
KGVtcGgsIGVkcC0+dHgxICsgVFhuX1RYX0VNUF9QT1NUMV9MVkwpOwogCkBAIC01MzAsNiArNTMx
LDUyIEBAIHN0YXRpYyBpbnQgcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9wbGxfdjQoY29uc3Qgc3Ry
dWN0IHFjb21fZWRwICplZHApCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgcWNvbV9lZHBf
bGRvX2NvbmZpZ192Myhjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKK3sKKwljb25zdCBzdHJ1
Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJmVkcC0+ZHBfb3B0czsKKwl1MzIg
bGRvX2NvbmZpZzsKKworCWlmICghZWRwLT5pc19lZHApCisJCWxkb19jb25maWcgPSAweDA7CisJ
ZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9IDI3MDApCisJCWxkb19jb25maWcgPSAweDgx
OworCWVsc2UKKwkJbGRvX2NvbmZpZyA9IDB4NDE7CisKKwl3cml0ZWwobGRvX2NvbmZpZywgZWRw
LT50eDAgKyBUWG5fTERPX0NPTkZJRyk7CisJd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsg
VFhuX0xET19DT05GSUcpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgcWNvbV9lZHBf
bGRvX2NvbmZpZ192NChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKK3sKKwljb25zdCBzdHJ1
Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJmVkcC0+ZHBfb3B0czsKKwl1MzIg
bGRvX2NvbmZpZzsKKworCWlmICghZWRwLT5pc19lZHApCisJCWxkb19jb25maWcgPSAweDA7CisJ
ZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9IDI3MDApCisJCWxkb19jb25maWcgPSAweEMx
OworCWVsc2UKKwkJbGRvX2NvbmZpZyA9IDB4ODE7CisKKwl3cml0ZWwobGRvX2NvbmZpZywgZWRw
LT50eDAgKyBUWG5fTERPX0NPTkZJRyk7CisJd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsg
VFhuX0xET19DT05GSUcpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGh5X3Zlcl9vcHMgcWNvbV9lZHBfcGh5X29wc192MyA9IHsKKwkuY29tX3Bvd2VyX29uCQk9IHFj
b21fZWRwX3BoeV9wb3dlcl9vbl92NCwKKwkuY29tX3Jlc2V0c21fY250cmwJPSBxY29tX2VkcF9w
aHlfY29tX3Jlc2V0c21fY250cmxfdjQsCisJLmNvbV9iaWFzX2VuX2Nsa2J1ZmxyCT0gcWNvbV9l
ZHBfY29tX2JpYXNfZW5fY2xrYnVmbHJfdjQsCisJLmNvbV9jbGtfZndkX2NmZwk9IHFjb21fZWRw
X2NvbV9jbGtfZndkX2NmZ192NCwKKwkuY29tX2NvbmZpZ3VyZV9wbGwJPSBxY29tX2VkcF9jb21f
Y29uZmlndXJlX3BsbF92NCwKKwkuY29tX2NvbmZpZ3VyZV9zc2MJPSBxY29tX2VkcF9jb21fY29u
ZmlndXJlX3NzY192NCwKKwkuY29tX2xkb19jb25maWcJCT0gcWNvbV9lZHBfbGRvX2NvbmZpZ192
MywKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgcWNvbV9lZHBfcGh5X29w
c192NCA9IHsKIAkuY29tX3Bvd2VyX29uCQk9IHFjb21fZWRwX3BoeV9wb3dlcl9vbl92NCwKIAku
Y29tX3Jlc2V0c21fY250cmwJPSBxY29tX2VkcF9waHlfY29tX3Jlc2V0c21fY250cmxfdjQsCkBA
IC01MzcsNiArNTg0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29wcyBxY29tX2Vk
cF9waHlfb3BzX3Y0ID0gewogCS5jb21fY2xrX2Z3ZF9jZmcJPSBxY29tX2VkcF9jb21fY2xrX2Z3
ZF9jZmdfdjQsCiAJLmNvbV9jb25maWd1cmVfcGxsCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9w
bGxfdjQsCiAJLmNvbV9jb25maWd1cmVfc3NjCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9zc2Nf
djQsCisJLmNvbV9sZG9fY29uZmlnCQk9IHFjb21fZWRwX2xkb19jb25maWdfdjQsCiB9OwogCiBz
dGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgc2E4Nzc1cF9kcF9waHlfY2ZnID0g
ewpAQCAtNTUwLDcgKzU5OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2Nm
ZyBzYTg3NzVwX2RwX3BoeV9jZmcgPSB7CiBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3Bo
eV9jZmcgc2M3MjgwX2RwX3BoeV9jZmcgPSB7CiAJLmF1eF9jZmcgPSBlZHBfcGh5X2F1eF9jZmdf
djQsCiAJLnZjb19kaXZfY2ZnID0gZWRwX3BoeV92Y29fZGl2X2NmZ192NCwKLQkudmVyX29wcyA9
ICZxY29tX2VkcF9waHlfb3BzX3Y0LAorCS52ZXJfb3BzID0gJnFjb21fZWRwX3BoeV9vcHNfdjMs
CiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgc2M4MjgweHBfZHBf
cGh5X2NmZyA9IHsKQEAgLTczMywxMiArNzgxLDMxIEBAIHN0YXRpYyBpbnQgcWNvbV9lZHBfY29t
X2NvbmZpZ3VyZV9wbGxfdjYoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCiAJcmV0dXJuIDA7
CiB9CiAKK3N0YXRpYyBpbnQgcWNvbV9lZHBfbGRvX2NvbmZpZ192Nihjb25zdCBzdHJ1Y3QgcWNv
bV9lZHAgKmVkcCkKK3sKKwljb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcF9v
cHRzID0gJmVkcC0+ZHBfb3B0czsKKwl1MzIgbGRvX2NvbmZpZzsKKworCWlmICghZWRwLT5pc19l
ZHApCisJCWxkb19jb25maWcgPSAweDA7CisJZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9
IDI3MDApCisJCWxkb19jb25maWcgPSAweDUxOworCWVsc2UKKwkJbGRvX2NvbmZpZyA9IDB4OTE7
CisKKwl3cml0ZWwobGRvX2NvbmZpZywgZWRwLT50eDAgKyBUWG5fTERPX0NPTkZJRyk7CisJd3Jp
dGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsgVFhuX0xET19DT05GSUcpOworCisJcmV0dXJuIDA7
Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgcWNvbV9lZHBfcGh5X29wc192
NiA9IHsKIAkuY29tX3Bvd2VyX29uCQk9IHFjb21fZWRwX3BoeV9wb3dlcl9vbl92NiwKIAkuY29t
X3Jlc2V0c21fY250cmwJPSBxY29tX2VkcF9waHlfY29tX3Jlc2V0c21fY250cmxfdjYsCiAJLmNv
bV9iaWFzX2VuX2Nsa2J1ZmxyCT0gcWNvbV9lZHBfY29tX2JpYXNfZW5fY2xrYnVmbHJfdjYsCiAJ
LmNvbV9jb25maWd1cmVfcGxsCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9wbGxfdjYsCiAJLmNv
bV9jb25maWd1cmVfc3NjCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9zc2NfdjYsCisJLmNvbV9s
ZG9fY29uZmlnCQk9IHFjb21fZWRwX2xkb19jb25maWdfdjYsCiB9OwogCiBzdGF0aWMgc3RydWN0
IHFjb21fZWRwX3BoeV9jZmcgeDFlODAxMDBfcGh5X2NmZyA9IHsKQEAgLTkxOCw2ICs5ODUsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJfb3BzIHFjb21fZWRwX3BoeV9vcHNfdjggPSB7
CiAJLmNvbV9jbGtfZndkX2NmZwk9IHFjb21fZWRwX2NvbV9jbGtfZndkX2NmZ192OCwKIAkuY29t
X2NvbmZpZ3VyZV9wbGwJPSBxY29tX2VkcF9jb21fY29uZmlndXJlX3BsbF92OCwKIAkuY29tX2Nv
bmZpZ3VyZV9zc2MJPSBxY29tX2VkcF9jb21fY29uZmlndXJlX3NzY192OCwKKwkuY29tX2xkb19j
b25maWcJCT0gcWNvbV9lZHBfbGRvX2NvbmZpZ192NiwKIH07CiAKIHN0YXRpYyBzdHJ1Y3QgcWNv
bV9lZHBfcGh5X2NmZyBnbHltdXJfcGh5X2NmZyA9IHsKQEAgLTkzMiw3ICsxMDAwLDYgQEAgc3Rh
dGljIGludCBxY29tX2VkcF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQogCWNvbnN0IHN0
cnVjdCBxY29tX2VkcCAqZWRwID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CiAJdTMyIGJpYXMwX2Vu
LCBkcnZyMF9lbiwgYmlhczFfZW4sIGRydnIxX2VuOwogCXVuc2lnbmVkIGxvbmcgcGl4ZWxfZnJl
cTsKLQl1OCBsZG9fY29uZmlnID0gMHgwOwogCWludCByZXQ7CiAJdTMyIHZhbDsKIAl1OCBjZmcx
OwpAQCAtOTQxLDExICsxMDA4LDEwIEBAIHN0YXRpYyBpbnQgcWNvbV9lZHBfcGh5X3Bvd2VyX29u
KHN0cnVjdCBwaHkgKnBoeSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JaWYgKGVkcC0+
Y2ZnLT5zd2luZ19wcmVfZW1waF9jZmcgJiYgIWVkcC0+aXNfZWRwKQotCQlsZG9fY29uZmlnID0g
MHgxOworCXJldCA9IGVkcC0+Y2ZnLT52ZXJfb3BzLT5jb21fbGRvX2NvbmZpZyhlZHApOworCWlm
IChyZXQpCisJCXJldHVybiByZXQ7CiAKLQl3cml0ZWwobGRvX2NvbmZpZywgZWRwLT50eDAgKyBU
WG5fTERPX0NPTkZJRyk7Ci0Jd3JpdGVsKGxkb19jb25maWcsIGVkcC0+dHgxICsgVFhuX0xET19D
T05GSUcpOwogCXdyaXRlbCgweDAwLCBlZHAtPnR4MCArIFRYbl9MQU5FX01PREVfMSk7CiAJd3Jp
dGVsKDB4MDAsIGVkcC0+dHgxICsgVFhuX0xBTkVfTU9ERV8xKTsKIAoKLS0gCjIuNDMuMAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
