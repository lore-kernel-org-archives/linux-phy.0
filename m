Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B314C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 14:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0/ktNe/KQaC7vnEeYUy9oTjCsmNECu6uZODFsb7JbA=; b=2oxyhOaRMJKOzb
	oHBLJf2dyIA9hZGEOjMD99vvqBGuSFXBseKFpOsnedWQmfasGMv4cf7aBKURAZLDC6gR1IH616zut
	xJnDx647hguFe97ZaXkVB668rdXYNMRU7n6QbVajJM5bYitY1WApkUeFB6n2j1u1QIjH1frFB+3mi
	aEUzNGwdRDy3RuLRSOxYbIMPvpT6CgkUI8rfqZj5kbqVcHLyakKTd3GvdZCHC//fDQKbuL8jkZ+4s
	avANS3ZNUrD/aB9MPN8X0R4V9Be7HdkDj702qI0mfklQeqQM/9a5atsJtiVGkyBD9briM15RgWg+r
	Pv5XZw3FZ+LeUP3hoETw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woMHV-00000002zGU-2XO2;
	Mon, 27 Jul 2026 14:26:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woMHT-00000002zF2-2Zrj
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 14:26:12 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66RDlkue4035355
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:26:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oy0mH4sOH578efJ6Gq+6ZULd
	BJ7VNf5OuMq0T7ZLoOs=; b=Fw39adlV1Dw8yAT9DITYXrSv26tgBA3e66fmtToj
	mEVio62D5SLx4V4uI6n93+d1Xj+TGTvIRCZcvBCPWqBTFzLGBv/RiMrHv44f/zv+
	QQ8qAIVgJYIeWVj0EvXWyJFYhXyacy0MUJrDYvQ3D2qREgMg3hoWvu5BzlZbF47j
	NvZGAzb1mfNwCpP55/rKGOzS05XRUFsgIiRdTRE//Rekd6dL7lpZdjAKEbIg34Yd
	lDlGv+aAHtDdho7apKCxjgcKbljJ0WS3MK2LUgiKfOHbcEoLqqxnhvrQNzYJXDCy
	yfWGp5Pno/s2bqeEidhQdCjqNE+wndeiX0PMW/q/pQn8QA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fp30g1nc3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:26:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c0e702df8so33933981cf.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 07:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785162370; x=1785767170; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oy0mH4sOH578efJ6Gq+6ZULdBJ7VNf5OuMq0T7ZLoOs=;
        b=dvYBgtJsgHpVy5bFWuFftMDDYwi6vhAntEttfKrYOTBqzNsFDdTp/AnyR6B639rxzl
         AK5+O0jduZDhg5vE/0SIInDmoP897RhlHcv0XDgb0X4bOLDt7exI9awlKmN5LFc/2b6C
         HCN4xyWahZcz14KufsVTmBfIW+wVD3+JOQw0aRWbftVBvqRHnEYRMglrMx0DQVw4csos
         aORdadhdLkOT6v3ueRK/Y4IxJELk3wx650jqPT1C8jJq5vadg2R8HS9vYPqlA8oGYYb+
         A67ZYBP+EJR1NAUdlSdyty3GZOZhMUSgyGjiqvDrDnSs8uM8IblYLfvuGRvlqzPlL2XQ
         wAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785162370; x=1785767170;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oy0mH4sOH578efJ6Gq+6ZULdBJ7VNf5OuMq0T7ZLoOs=;
        b=nXqYciGcrmWtz/YJcA2D5BkwtC1R5QxzuuLx5G0Q8LkFtgSVX+Rylb6nhvLK1Q0m7t
         Jo73ahZzGQec9/STecz/drVjssl9fytwAI47MLAFh8pcxIM4tZtN6h1Htn3VWl6ACk5G
         g47TR7ImzZmcrd8ORyYi0tS8kt4nPwp0uW9DD3sO5eol+/HdBtvMjqjTI9r+FgzBeWZO
         Sq3gEM4fmMlkbeWA5K9n8acY/OfoJHpLSSJ7q+TpI4mkqBWOJiR3VdtNB/nhwHKJr2CQ
         jUmd9p8fg3Xx5ufJ7w12kWfZ4Htll1R5gUgNZhWLKx7SYczZ5NEM8z+DGrLvyrSzmh/k
         Ad+A==
X-Forwarded-Encrypted: i=1; AHgh+RoAUO+WDwuQuKJO0sZTC/iK1BZieq/ZFF8C2TfCP1QiNsqSCKx61Xf+TMdrp0mKPZKxANuINC7Q5Eg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxScSxVOJsAXkN4FbYCgHPG5DEQXkvGNqfoUjBY4T/0PelwZ6GJ
	xqzv9yOJZo5XcvMQHvhcr5JK+c5rwM8p+4t89ex1Pc+/5NY0E2BSWf2Pdsb5/aHmE+p9e082tTX
	vSHKuEMZshq4TgqA+8S+cyF4/WEYATma4MHEvYhWusfA7s6yVD1lqIBWJ6jr3+6hGuboP
X-Gm-Gg: AR+sD11BKNL6l6nNRwi2Q53NUI/Xlgj9j70FdVKbJWdPdmePkXmmq5Gpvq3Gddjgqrf
	WzAdij586+QCWBM48S/jX0r8OKIK2OM8sUltRC/fFoc3x3o9AG215EuISJ9ZeIMo8hexXGt4LEh
	3+Y4NKudW219rmzl4Ne722kaCMgAO18cToMgDIwTlVUqtkyGwQ01iCKhZH7naH0ZxThc0Y7tvyS
	I4JbiNVV09YR0yqSnF2N3315jND3+BR84e9/SGcx+NFGk1/UpUEATvem7Oa0w/YTJrou7ygXprS
	kAkrP+1J0tkvV+q+Czh6wkNOGvxSUhw/owJ6IhRXGAVNe7F6L6sdlDEwBpB6cSLfPAlmlKYsHPW
	LNvKY+zefsPuGZ24=
X-Received: by 2002:ac8:5714:0:b0:517:87bc:9b47 with SMTP id d75a77b69052e-529a85ed059mr87169471cf.39.1785162370020;
        Mon, 27 Jul 2026 07:26:10 -0700 (PDT)
X-Received: by 2002:ac8:5714:0:b0:517:87bc:9b47 with SMTP id d75a77b69052e-529a85ed059mr87168661cf.39.1785162369415;
        Mon, 27 Jul 2026 07:26:09 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.163.114])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f864305f5sm48323508f8f.17.2026.07.27.07.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 07:26:08 -0700 (PDT)
Date: Mon, 27 Jul 2026 17:26:05 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
        nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
        gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
        mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v13 06/12] spmi: Add helper to get a parent SPMI device
Message-ID: <tdx7aygeu3li6gjmzsxntg24mgcg5fkiz7c6oibuhucedupwjo@iqpnvtiohstz>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
 <20260721093626.96264-7-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721093626.96264-7-angelogioacchino.delregno@collabora.com>
X-Authority-Analysis: v=2.4 cv=Wac8rUhX c=1 sm=1 tr=0 ts=6a676a82 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=6dw9+iwJWV8PcCi9M4lOBg==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=vXzjEk_Rc76YdSX0aKIA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDEzNiBTYWx0ZWRfX9u2A00cLRJTv
 l5gUhQV5DzQwe1GMqdjqsouCpwkmUds+MJL4HgKRH4FB09yXfgCiyN00dOZUrVQG2zoO4tTbaYG
 L+l0c0Ina67Tvu3WttQ2K/FQ7AKcx28=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDEzNiBTYWx0ZWRfX807fNLX/rsJw
 y22Uk84/CPBvQdLVnZNVZ8m72bEf70fRfjlRJtfaZ/td1f/TxTMVJL0ywg2fGqlOs6a/js+GQHX
 RlRFfAilNgn60wJd4JZflCap7uwbqqgbBOcBY0QrEcV+a9r2t5vaGuTjSip2o+0ndV2fgyDszAW
 qxfShlHAvEvHkaHylYBoHQ0rrBR0g7ZKZvlK9fsPr/2wKhtPwmKc4VB5ROLot8zwA7hNb0usixF
 FIkHGonM2JrAM7u8EOxtok3luwWjVORtW3FJZMjnTpwOo0D6DIf/TR20M2/+HMCrKePfSd/y9Fk
 QHks+TQBBNegMJrfAg8I2TFcOaWf4vDFMozu28xRuXIb05dBUr/jX94S4FOa6mn3eqr9/bwB2t4
 tBCwluh8/vxHBXxVhVQQTUBT2OOYkZO79UplN76f0tOjKY8B0fNbuM1Xv+JzLio6sJYtwBAS3jT
 e7zBMxsDFJOz/tkRg7A==
X-Proofpoint-GUID: dRb6DPAzWYR8FG1OY40dRruoCpK6slIi
X-Proofpoint-ORIG-GUID: dRb6DPAzWYR8FG1OY40dRruoCpK6slIi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_04,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_072611_768469_49F3E056 
X-CRM114-Status: GOOD (  15.01  )
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

On 26-07-21 11:36:20, AngeloGioacchino Del Regno wrote:
> Drivers that register a SPMI sub-device as a platform_driver are
> not guaranteed to have a SPMI device as their parent: add a new
> helper `spmi_get_parent_spmi_device()` that takes a struct device
> and checks if there's a parent, and if that parent is actually a
> SPMI device by checking if its device type matches with SPMI: if
> so, returns a pointer to the relative struct spmi_device without
> incrementing any refcount.
> 
> As a note, in the specific case of using this helper to retrieve
> a SPMI subdevice's parent, the spmi_subdevice_alloc_and_add()
> function does actually call device_add(), which will already take
> care of raising the refcount of the associated parent device.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Looks good to me:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
