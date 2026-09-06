Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0CC8C79F99
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 13:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1/S3kj1Keem2lejeTRKI4LNM+aJ8wrcJamnfibdDC0=; b=ZEca39QcyWz35c
	Y12GpJAVugU9otW7mQfaFsB+Rc9MyV5/aVBQvj3PrM2sor9DcxekZHHmYz+xdVgg169E+5FP2q4IE
	EzxTf/T7kXPcbjqtdx3I1xLKngWX5JEZoYtd3Lj0IWLFszof5ZuA+wFPo4yihwk16sB0Dhox33/+q
	OZJadUFkHLYvA01fPRMLmiMyz+Lb7Rno7pfhHU05o6Z9TC7oGlRgR1Ll2TAYgDAtJ5/pDkafj8e6Y
	gSBJF0wM2ZQaIztNOrF8NiBt2O5kufMoOMTqZN0MCV89Q82LdrGZfmF19j83drNBhyd8SObqva53z
	JymO09WZw8AXXynVKZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3CXZ-000000052RX-32ST;
	Sun, 06 Sep 2026 13:04:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3CXW-000000052RB-3TIR
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 13:04:08 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6866rLcB915057
	for <linux-phy@lists.infradead.org>; Sun, 6 Sep 2026 13:04:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2ysWDTJuB6llFpSgzIb+oRVd/8wf1+tQbxSGKnBlYo=; b=JyojFKwtf2ifnGD9
	rqNm9nNk553PPGh/DWczZPq9i1dXHl11Fa3JS9d46iDfFj4UCTqWWb3vN40k9rOS
	EopsvEIDaS2A5Atg1ooeu0sQo8Chp6a3toS93qRXad+6uZkZa0AzTkSTyQbh1jl3
	2NMQR3W6rl9dLKq5JX3ZzjJT74fJ9RwNotrS7kaSFZqOix62CjC+urMDtuGWyes2
	RhPObL4xyDmTAVStl6YJeOFFa2ePJldo1EljxnRDJUxHcKi7GVNlh3P/ZGPXcuiA
	WR7khhR+7HQVFNjFDzWqD3jKwa7kO0P3oBOht2iNS5AIaB61MbNvGalb4PeUQIep
	fKzgMQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggany3dn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 13:04:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ce7dfd33ffso33849415ad.0
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 06:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788699844; x=1789304644; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R2ysWDTJuB6llFpSgzIb+oRVd/8wf1+tQbxSGKnBlYo=;
        b=PIOlP/DJi0LLNxJzAApyoQIZzDKqL1kpmjkvz21+MkWf2IHKjt0yMgtwrFEXQJBTDS
         O7GxAxsu62AKPAM1K4V5jGE4+8g4b62k2bnfhsUPI+I8I5tSvpL5pCfWxM+RkptUnBar
         tJysWjNjsjMHWvlaR8+iQsVr3MhtwJcSU13q8pUusYcE/K1y5ldWqoX8p4hzX23Ekzy2
         Q1JWvRLzjLDCMJkMut2OOw/Lp3YU9QQI9UoTMzBvnYmUV3OWzzMc1A0CFp4LfYfsPSef
         H3+oRJb371nTDQtQrbJWAHKmbAMxdPKeCYLY0eXYwXcSP7vBwZiFROXrNIg6nAoNOjyL
         O8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788699844; x=1789304644;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R2ysWDTJuB6llFpSgzIb+oRVd/8wf1+tQbxSGKnBlYo=;
        b=KzV4zwDuWW95X89KVp9qB8mryNNZn8epJpCwHXtyKEPbNGN5S64Vb5PLJQwr8mpkuC
         p195M5IOqmF93d7GwBurfMH4zAd/QKiqe1cpsjz8co1w7h/Grl7Oe3PZQ7f7pDRceCUx
         U4KHbbmUMgcY45HAuBzcgp4P0d3SG3nNaoZPs3LDkjr5oE176JTqFE4sVOX7TfsV5znT
         yAoo3doZ6d4FDSMVeMmlE6zt464EEET8fVLaalyXZIE9l00MAGQ7fsyjaFV1tiX1FMv3
         tdJz/vQ43Y/E6V0LU2hwO/zdYiOHaMjbCbd2qU28h/zd4kmSf2UoXUM02GhxXB3VY4wN
         yOPA==
X-Forwarded-Encrypted: i=1; AKwUvBxTqHaef0YLxdY3xzBxy1lFrZH46O8sH/P7rdcQWH+EDl4bYAwfBDyRkTsXkYPsNB0xkt4Xovo++4Q=@lists.infradead.org
X-Gm-Message-State: AFuF++nkzGl/Cz+x/ePhMVhPmgkbK58wjJLeDg2ZNUquCOG0ZqkeHHKT
	U3KRYd3G+hB1bSc5gqkABjx+KDXKetHwcc1nhku3u+X3G1LP+kM5gd5FAwSpNRgyh2i29v4FBdW
	i8/K58FJAJXqridbcXdYLboPm5KUUMucuQgirHe21UtJ3bGQBsr65sC/mJmvqAMhMqXe+
X-Gm-Gg: AYBFou1OmjNFAtB0qPi4JFg0Ur1ko6TTp0oOYztiayHUtY13sf/cfccfK2aTSio/ffm
	9w4e8H2zIRm0apR1aqx+xV9C5WSeWLitGiuE4WsjQhIOCZB/nLjS/fGMlT9hECNoAOth4X60R35
	/toHEeTqwbeh35unbMcOoXer5jGdvdS8zhzgNJN/yeknUsYLM9F8Cb2I2QtKa2dX/WyPbmy9TkJ
	gLaY+xW7i8nR2FasoClm/r4w/yILeWKnXA0f/azqqUvCiAcZWTM3ohKk/4frPLZQa+dbq+6tDi4
	gGctvTUAtHROkJWQrSPJEZuGJyKzdNGaCoL1ljsrdjMdVB8yYoE8hsYqKdYiLAcMCmLwM49O6Wx
	2OnZxGPWmcnNXXzeEKqDbQHhApSqi
X-Received: by 2002:a17:902:c403:b0:2db:2c09:98ad with SMTP id d9443c01a7336-2db2c099a0fmr129398795ad.12.1788699844047;
        Sun, 06 Sep 2026 06:04:04 -0700 (PDT)
X-Received: by 2002:a17:902:c403:b0:2db:2c09:98ad with SMTP id d9443c01a7336-2db2c099a0fmr129398165ad.12.1788699843535;
        Sun, 06 Sep 2026 06:04:03 -0700 (PDT)
Received: from [192.168.1.11] ([103.211.19.41])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33688cfc714sm4104133eec.20.2026.09.06.06.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2026 06:04:03 -0700 (PDT)
Message-ID: <03368f56-5542-4c02-a4a0-f57d5cfa5766@oss.qualcomm.com>
Date: Sun, 6 Sep 2026 18:33:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-5-f7bd68b5369f@linaro.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-5-f7bd68b5369f@linaro.org>
X-Authority-Analysis: v=2.4 cv=X45i7mTe c=1 sm=1 tr=0 ts=6a9d64c5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=HcLy/BXbbKFjgnJyaMb84Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=uHPnOIaY-gHs_qv2vRMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: cvCf4-4JeqBDijnQTyiUg_1oWnoob-nX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA2MDE0NCBTYWx0ZWRfX+WSFJHiEju9q
 OCGPXnn0RJ3gK4w668tjvX6yC5a51sjtXgi5Dm993iVH4rleU8qE3MnbE7NZLDsg3VKHNWHGDLA
 jG6VQ83s61z3CO9qmJwQ5GlA//t7HQ+UpRsn7HI4P0J+Hd9vZsSU0Be8piS4B/J4zC/VsN8TkFW
 jbsFr9XkYZ4tqVISwb8MhGqS/26hqBJzWk6UIOUEJ0KyEbJiQpyzYSTHUG8HBjPOCiK/Zp/SyZh
 v1butvBfioDjq5aYZOeEa7+ZIFIFOBc8dQCV9AtUYx/ZWJqUqu7CyZI2BsmsVFrnz7vkHdr92hZ
 C0rSyMqTJ8dqLK5yJ2uIqh6w9ctLTfGemeqUtC+WDHC13D+hoLbWOS7FKww0lX3sPVRuo1byb4+
 9wFc3Ae/8phxBzDkaqtcSKlIy0lbkSUqGd14lMUjl6VavST6kNxgwVBQJ8+m/Bz37P5Ozz8INiZ
 tmF+mnZtwFJJXYd2gZA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA2MDE0NCBTYWx0ZWRfX76cYuYRa5+mS
 U8qvUcJuBzv3HWg1/YNrIqHb0Oub2I7l5P/SK9NZYMbfOffk3PKQ4Jk28qLtnwOlBefk8RBW0mf
 RRRsZzycGYUcck+16WOeFsrRda5KSCY=
X-Proofpoint-GUID: cvCf4-4JeqBDijnQTyiUg_1oWnoob-nX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_08,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1011 adultscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609060144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_060406_991465_309CA1E5 
X-CRM114-Status: GOOD (  12.17  )
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

CgpPbiAwNi0wOS0yMDI2IDE3OjIyLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+ICsJCWlmIChs
YW5lIDwgbGFuZV9iYXNlIHx8IGxhbmUgLSBsYW5lX2Jhc2UgPj0gQ1NJMl9NQVhfREFUQV9MQU5F
Uykgewo+ICsJCQlkZXZfZXJyKGRldiwgImludmFsaWQgZGF0YS1sYW5lICV1XG4iLCBsYW5lKTsK
PiArCQkJcmV0dXJuIC1FSU5WQUw7CiAgQ0MgW01dICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MubwouLi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MuYzogSW4gZnVuY3Rpb24g4oCYY2Ftc3NfcGFyc2VfZW5kcG9pbnRfbm9kZeKAmToKLi4vZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmM6NDc4Mzo2MTogZXJyb3I6IOKA
mENTSTJfTUFYX0RBVEFfTEFORVPigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVu
Y3Rpb24pCiA0NzgzIHwgICAgICAgICAgICAgICAgIGlmIChsYW5lIDwgbGFuZV9iYXNlIHx8IGxh
bmUgLSBsYW5lX2Jhc2UgPj0gQ1NJMl9NQVhfREFUQV9MQU5FUykgewogICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn4KLi4vZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LmM6NDc4Mzo2MTogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQg
b25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KbWFrZVs4XTogKioqIFsu
Li9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI5MDogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLm9dIEVycm9yIDEKCkNTSTJfTUFYX0RBVEFfTEFORVMgaXMgdW5kZWNsYXJl
ZCBoZXJlLCBjYXVzaW5nIGEgYnVpbGQgZmFpbHVyZS4KCi0tLQpSZWdhcmRzLApOaWhhbCBLdW1h
ciBHdXB0YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
