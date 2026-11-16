Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9B7606A32C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 06:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iLEqtvbM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KccI8a23;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KOQ6Jo8W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cWXVCW404mlQlPgLe9mdPKunYdH3fg3umvZgevdSeeY=; b=iLEqtvbMgGVYTg4LtIYBfeE71k
	3z/MkhNhDuE9aUBtDkOFTzCcIGK/e8ifHi7CBaYmFOHjflIP5Dww2Q2BRbPhq94PDgPZLFQ0QzoCn
	PB4FQcXXVP/k58sgK2YThOF021IW7A3xDpM+UDDGi/eO/4PiobZtyJmYxNe9DtJ1ElsDKk1HergEa
	Jim4SewDywNIn0MqYSi1D8HRMBPGmeAz5ChUBG/aAzlR7q7azbwYcxNwH4Fu8WOT8b8YbzaXzUc0r
	q9stkez8jTmq74ZAZJbA9zavH6zSkWrAvF1KC7+GaLzM+xBi6BKfKremRA3Ltkrr0EL+i+hnGeBdD
	43ryoe4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSqNf-00000001K2l-0YUM;
	Mon, 16 Nov 2026 06:39:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSqNd-00000001K27-1XzR
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 06:39:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AG5Lhdh656047
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 06:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Uwe1KYw1P29e1DCVb9MjyF+M
	XhbVXhW/CrTXu68G5dk=; b=KccI8a23szTMbu2QuoBOEIyxSw8xRhiQsWZt+YWM
	gJr6Q+7cDA0uZRq301gg1OcPsNktR35+u+olq64jhgCdcbhDhkUIM5q/1w3HSSzt
	mPN0wgGtpP7EvRPwgnpjAOcchvltQ5N9la0u+G4CBF6cb1eyAHkRX5gh5sZ2KbnC
	QUH75P9/8S+AXIv31PqwTDyQGYEVvAcasvcj68WpyMItV+kWSXiciVxGLg9h/ncE
	tat7c/WacjwGk+qYkFb+wyi+u3m/+q7o9V1yiaYpvYrhIsByvJtNKW1VvHe7hqic
	ViY+VwHU8wXZao42aj7krdea4owxpl6DVTuvXhZFMkn5hg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhk256cm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 06:39:51 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7d2ecff433dso2683665137.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 22:39:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794811188; cv=none;
        d=google.com; s=arc-20260327;
        b=SEGVM7J7vCI/Savxf13iK5UXGL79caDrfKRC6YvbJVUTUjN2ZEtKAgotDmFzPnE3MT
         skraatvH8NJioVcCF8HSPco9+llYYNc5fuTtBK00zEEiD30udQWFQcIo1hHXQmDL70cK
         VxP43XXGrT0mQHLK8r4wZ/fKLML5ZFtzRakMLqXxRIkTaOz44fOHYjt8Jq3woYP0EQb8
         2F5RIAF3pMh9WcERvvjc+fw1oDyY1H6UgllVBtvlRbn/bSZ1insCyOTpLbKcnZD4U+E5
         V5ks+hDzGBIK/cI2i6fOwM8Td0Xzme7d4H9UG4999kPj3LGY21XcySZDKlRl5T0Z3tGw
         zpOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Uwe1KYw1P29e1DCVb9MjyF+MXhbVXhW/CrTXu68G5dk=;
        fh=sD3ujhuqSgIOeaocs9rO3mz2w2CdtqcnzFYzn7WMin8=;
        b=A2dChD/UA8uwJczICtZFCsvhe6Yxzxbafa8ZRCz6QkW/yHYlrsDHZaObU5Cq2Hnbzq
         1wfe3z71PQdwOhGl9AazJBfBWGX3FuKdAL6eXo83MtxFAvcVGasLuIOKTLwWMhDr6nIb
         FCOB3GD6AqFieDZxnBpCoN94S7iYKmaAgs9etx10TVYFTyFzb5umjACE27F/fP+AzAKx
         E0T0nYhB/KPvBMANDdE+82XGj0JqGxsU/BRg6f8REzjq93Eu69/te2V5+gB/nzquvLkO
         WjxfFVBd22pYxiHcgiZYvTsJB63XJATOZb8uHDZTWiT/oQkngLqS+vxw2k04prx1FKqn
         7m0g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794811188; x=1795415988; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Uwe1KYw1P29e1DCVb9MjyF+MXhbVXhW/CrTXu68G5dk=;
        b=KOQ6Jo8WBSW5j9fIjsmzrtJxs0mEmg+/ZqL1BAhZozBw02gjoxvUlgGDqnh3+3z+Bk
         1quZgGA5AeYzKBxSVc6KgFNFtvCPTYn9Qgp6J1npb+ZLFc7q8fM4uQjFtTdo3s0Wen94
         SGjwj0ZZbNWca1VvIOcyWGKhtcLTpgmVTZ3+XuCW9T3NLH1ph3z/qqKJBJ74WJs56oD4
         7y64HuTnNyZDJUyoxO2hQkcmjRWYylbwcZP2apWWAu69yOJzckOKRvIA2fs1SBYZ9Rmt
         7pkemOwV3oGQXnlt/xqC5Kd+ZML2tHqJhhjh+Eb8rzRN6Wl7c6ksaogeiTfWxGviMQnw
         OrSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794811188; x=1795415988;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Uwe1KYw1P29e1DCVb9MjyF+MXhbVXhW/CrTXu68G5dk=;
        b=KhmDZ9pGAm5MogcKjiXrnhl2rJEAAHa9H7KxqZFo8N1haSsQSaamDOfwNa+4gQGFTk
         KPwq7PxJS7jnpgKT7emdZkh3nQvYDmtp8yrK28tpmwGmUOW4qBCO14xiyIPMiEZCZHi0
         j8+aMCbErfXtNt1CPaZqtGZoWgxIiOjJdsCGP9JhSGiQHVrCRmgRdVC35tg/tX/7d6lG
         ZttJ4DQvqxcd2NRhy0cdWT256Pr/ocW6zkO0xhTxTWbKzUYEnPlWbbvrykFL1RooM30e
         ra3Tj/jefSHIQCyY+vbZq4vX8ERZD0+CbRpjZdJlavCVlzwAqEYZYIYUpYOtAYnaJVfM
         Np5g==
X-Gm-Message-State: APuU4Z9yY4BJzP+8O4FqV+hDDfEe+l16GWxLQFBenMZNN7CPN8Jo+zTn
	mT5tHiBHRrAi5dCFrixM1y7JFEddWAJoJBVqQ9yPD2Za+5zNqVJcg5oS+xKLtz6SuGUc3Jwr3QW
	cIF1gxaexg5YnZzB4q3nMZk+N64K9gbhDo+dEO+OtYtbxryvsNHQ0+1Be5z0Oa6sYdlb16UvuZM
	kLppOUXOFN8g7HQ6u8M1jZuMAJyOjjZzgefSZoS01i/1JyHf+250w=
X-Gm-Gg: AYBFou0ZDSzTC4GCzMIQtjCt3sE0dCOwYzemcHf8volOaI4rhd4iOkuJMCuSO0N7p/y
	cb+rDjFpiny9jgHgY5EDYMreve48PNaeXvo32gFqBpBfken6fOK3UxMhszx0bttcg4Osu4j+vE4
	C9B2SvgNiO62f7vrvjjdIsWvaS9iUgEaqMKe8lgpNfa9Cl4qmfbkSoRTfg95HDweJtSYtJbe0ke
	7mhNqJxCGGbKKvhlQ==
X-Received: by 2002:a05:6102:c86:b0:7cc:2fd1:7122 with SMTP id ada2fe7eead31-7d64d76c2d5mr3162559137.18.1794811187995;
        Sun, 15 Nov 2026 22:39:47 -0800 (PST)
X-Received: by 2002:a05:6102:c86:b0:7cc:2fd1:7122 with SMTP id
 ada2fe7eead31-7d64d76c2d5mr3162538137.18.1794811187555; Sun, 15 Nov 2026
 22:39:47 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-10-8ff2a11835f6@oss.qualcomm.com>
 <130fecb6-5372-44d9-8261-c3ac88248631@linaro.org> <ea2dea8f-e696-4e86-be9f-248cb6ec86b9@linaro.org>
In-Reply-To: <ea2dea8f-e696-4e86-be9f-248cb6ec86b9@linaro.org>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 14:39:36 +0800
X-Gm-Features: Aa3M54oy1Hdi3jJI0vYcKhvRYWOd_gLd_nvmiZaADn1RpRApqiz9QprVKg54Urc
Message-ID: <CACbMrhqnjEhFzu+Y4OUoNVv-XhZce=cjsuFnUJNQD6FMN_ikRA@mail.gmail.com>
Subject: Re: [PATCH v7 10/23] media: qcom: camss: csid: Add support for CSID 980
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: XHLInHXMbrS9BCZhT1udnc6K_OEOo7CM
X-Authority-Analysis: v=2.4 cv=QanzLcbv c=1 sm=1 tr=0 ts=6afaa537 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=f4uaJoA6WFbKVHIvzf4A:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDAyNiBTYWx0ZWRfX+ONrqFtH4mes
 RXdeKiOZFgleybAxgiXiKPBoi2KsthiCHwqXLXqjbKDEzSHW6OH3XLu7ucuk3Cb2/qOXZwsUmmY
 GjoLTlpNZ+qWU7TsBS/s1oO0s12qQr+aJ2nnRJAW6yqeryKOLX6RCtOQ5nx9x8rHhep7dp6Xskp
 cTbHj1y+w515SOZYjhAdTHCTYanT1v1ql7YnsBVju9kEnrbsDy9mWZWQzO0w6pI9sVUwyaMTN6i
 P+6kqE2DkoUkNULLgT6iEgcRO8LzxVdcwb4fKvMr51NzbfUZExCkfV2Eu4+28I3eMVCKFEjP36+
 gO11CyxdBT9pKu5Maf/7GfZpl7OOC3TI97UT3ceiSxeHcPdZY5ufaUH2UGjF3DZrQ3+UoyTy5T8
 BuGx7gYZGAXVh+a8tOo8xFDguu3jfifZUEd7dCca0L7I7t7Hc6lv+W0w/xosEYgaI6z5bPF4hJl
 MH5MnpiQDfjz0QZuORw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDAyNiBTYWx0ZWRfXxK3WuLZOQo+O
 E7IK73Q1GCkSx1vAwA8hI7DXt4cfFlJJ5aD6AGsJqwXwc0N8/cWATnoAEGnaewEkq+E4KJG0l6c
 SoZEm21UKc4sh8qJQCWxs+znpf/C8GQ=
X-Proofpoint-GUID: XHLInHXMbrS9BCZhT1udnc6K_OEOo7CM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_223953_527763_55004A8D 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/15/2026 8:16 PM, Bryan O'Donoghue wrote:
> On 15/11/2026 12:14, Bryan O'Donoghue wrote:
>> On 14/11/2026 11:29, Wenmeng Liu wrote:
>>> +            for (k = 0; k < CAMSS_INIT_BUF_COUNT; k++) {
>>> +                __csid_addr_update(csid, i);
>>> +                __csid_reg_update(csid, i);
>>> +            }
>>
>> Why does this run twice for the same index ?
>>
>> ---
>> bod
>
> "run CAMSS_INIT_BUF_COUNT" for the same index ?
>
> You don't increment a buffer index. How can this be logical ?
>
> ---
> bod
Hi Bryan, CAMSS_INIT_BUF_COUNT is used in vfe_enable_output_v2() to
queue buffer addresses into the AUP FIFO.

Based on the hardware documentation and our local testing, each AUP FIFO
write needs a corresponding address update to take effect. Therefore, we
issue __csid_addr_update() twice for the same port.

You're right about __csid_reg_update(). It only needs to be called once
after the loop. Will fix that in the next revision.

---
Best regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
